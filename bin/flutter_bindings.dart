// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:fair_dart2dsl/src/widget.dart';
import 'package:fair_dart2dsl/src/transformer.dart';
import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';

DartFormatter _dartFormatter = DartFormatter();

// import 'package:flutter/widgets.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/semantics.dart';
// import 'package:flutter/animation.dart';
String _imports = '''
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
''';

String _codes = '''
double _inverseLerp(double min, double max, double t) {
 assert(min <= max);
 double value = (t - min) / (max - min);

 // If the device incorrectly reports a pressure outside of pressureMin
 // and pressureMax, we still want this recognizer to respond normally.
 if (!value.isNaN) {
   value = clampDouble(value, 0.0, 1.0);
 }
 return value;
}
const double _epsilonDefault = 1e-3;
const TextStyle _kDefaultPlaceholderStyle = TextStyle(
  fontWeight: FontWeight.w400,
  color: CupertinoColors.placeholderText,
);

// Builds a toolbar just like the default iOS toolbar, with the right color
// background and a rounded cutout with an arrow.
Widget _defaultToolbarBuilder(
    BuildContext context, Offset anchor, bool isAbove, Widget child) {
  return _CupertinoTextSelectionToolbarShape(
    anchor: anchor,
    isAbove: isAbove,
    child: DecoratedBox(
      decoration: const BoxDecoration(color: _kToolbarDividerColor),
      child: child,
    ),
  );
}

// Clips the child so that it has the shape of the default iOS text selection
// toolbar, with rounded corners and an arrow pointing at the anchor.
//
// The anchor should be in global coordinates.
class _CupertinoTextSelectionToolbarShape
    extends SingleChildRenderObjectWidget {
  const _CupertinoTextSelectionToolbarShape({
    required Offset anchor,
    required bool isAbove,
    super.child,
  })  : _anchor = anchor,
        _isAbove = isAbove;

  final Offset _anchor;

  // Whether the arrow should point down and be attached to the bottom
  // of the toolbar, or point up and be attached to the top of the toolbar.
  final bool _isAbove;

  @override
  _RenderCupertinoTextSelectionToolbarShape createRenderObject(
          BuildContext context) =>
      _RenderCupertinoTextSelectionToolbarShape(
        _anchor,
        _isAbove,
        null,
      );

  @override
  void updateRenderObject(BuildContext context,
      _RenderCupertinoTextSelectionToolbarShape renderObject) {
    renderObject
      ..anchor = _anchor
      ..isAbove = _isAbove;
  }
}

const Size _kToolbarArrowSize = Size(14.0, 7.0);

const Color _kToolbarDividerColor = Color(0xFF808080);

class _RenderCupertinoTextSelectionToolbarShape extends RenderShiftedBox {
  _RenderCupertinoTextSelectionToolbarShape(
    this._anchor,
    this._isAbove,
    RenderBox? child,
  ) : super(child);

  @override
  bool get isRepaintBoundary => true;

  Offset get anchor => _anchor;
  Offset _anchor;
  set anchor(Offset value) {
    if (value == _anchor) {
      return;
    }
    _anchor = value;
    markNeedsLayout();
  }

  bool get isAbove => _isAbove;
  bool _isAbove;
  set isAbove(bool value) {
    if (_isAbove == value) {
      return;
    }
    _isAbove = value;
    markNeedsLayout();
  }

  // The child is tall enough to have the arrow clipped out of it on both sides
  // top and bottom. Since _kToolbarHeight includes the height of one arrow, the
  // total height that the child is given is that plus one more arrow height.
  // The extra height on the opposite side of the arrow will be clipped out. By
  // using this approach, the buttons don't need any special padding that
  // depends on isAbove.
  final BoxConstraints _heightConstraint = BoxConstraints.tightFor(
    height: _kToolbarHeight + _kToolbarArrowSize.height,
  );

  @override
  void performLayout() {
    if (child == null) {
      return;
    }

    final BoxConstraints enforcedConstraint = constraints.loosen();

    child!.layout(_heightConstraint.enforce(enforcedConstraint),
        parentUsesSize: true);

    // The height of one arrow will be clipped off of the child, so adjust the
    // size and position to remove that piece from the layout.
    final BoxParentData childParentData = child!.parentData! as BoxParentData;
    childParentData.offset = Offset(
      0.0,
      _isAbove ? -_kToolbarArrowSize.height : 0.0,
    );
    size = Size(
      child!.size.width,
      child!.size.height - _kToolbarArrowSize.height,
    );
  }

  // The path is described in the toolbar's coordinate system.
  Path _clipPath() {
    final BoxParentData childParentData = child!.parentData! as BoxParentData;
    final Path rrect = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Offset(0.0, _kToolbarArrowSize.height) &
              Size(
                child!.size.width,
                child!.size.height - _kToolbarArrowSize.height * 2,
              ),
          _kToolbarBorderRadius,
        ),
      );

    final Offset localAnchor = globalToLocal(_anchor);
    final double centerX = childParentData.offset.dx + child!.size.width / 2;
    final double arrowXOffsetFromCenter = localAnchor.dx - centerX;
    final double arrowTipX = child!.size.width / 2 + arrowXOffsetFromCenter;

    final double arrowBaseY = _isAbove
        ? child!.size.height - _kToolbarArrowSize.height
        : _kToolbarArrowSize.height;

    final double arrowTipY = _isAbove ? child!.size.height : 0;

    final Path arrow = Path()
      ..moveTo(arrowTipX, arrowTipY)
      ..lineTo(arrowTipX - _kToolbarArrowSize.width / 2, arrowBaseY)
      ..lineTo(arrowTipX + _kToolbarArrowSize.width / 2, arrowBaseY)
      ..close();

    return Path.combine(PathOperation.union, rrect, arrow);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) {
      return;
    }

    final BoxParentData childParentData = child!.parentData! as BoxParentData;
    _clipPathLayer.layer = context.pushClipPath(
      needsCompositing,
      offset + childParentData.offset,
      Offset.zero & child!.size,
      _clipPath(),
      (PaintingContext innerContext, Offset innerOffset) =>
          innerContext.paintChild(child!, innerOffset),
      oldLayer: _clipPathLayer.layer,
    );
  }

  final LayerHandle<ClipPathLayer> _clipPathLayer =
      LayerHandle<ClipPathLayer>();
  Paint? _debugPaint;

  @override
  void dispose() {
    _clipPathLayer.layer = null;
    super.dispose();
  }

  @override
  void debugPaintSize(PaintingContext context, Offset offset) {
    assert(() {
      if (child == null) {
        return true;
      }

      _debugPaint ??= Paint()
        ..shader = ui.Gradient.linear(
          Offset.zero,
          const Offset(10.0, 10.0),
          const <Color>[
            Color(0x00000000),
            Color(0xFFFF00FF),
            Color(0xFFFF00FF),
            Color(0x00000000)
          ],
          const <double>[0.25, 0.25, 0.75, 0.75],
          TileMode.repeated,
        )
        ..strokeWidth = 2.0
        ..style = PaintingStyle.stroke;

      final BoxParentData childParentData = child!.parentData! as BoxParentData;
      context.canvas.drawPath(
          _clipPath().shift(offset + childParentData.offset), _debugPaint!);
      return true;
    }());
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    // Positions outside of the clipped area of the child are not counted as
    // hits.
    final BoxParentData childParentData = child!.parentData! as BoxParentData;
    final Rect hitBox = Rect.fromLTWH(
      childParentData.offset.dx,
      childParentData.offset.dy + _kToolbarArrowSize.height,
      child!.size.width,
      child!.size.height - _kToolbarArrowSize.height * 2,
    );
    if (!hitBox.contains(position)) {
      return false;
    }

    return super.hitTestChildren(result, position: position);
  }
}

// Values extracted from https://developer.apple.com/design/resources/.
// The height of the toolbar, including the arrow.
const double _kToolbarHeight = 43.0;

// Values extracted from https://developer.apple.com/design/resources/.
const Radius _kToolbarBorderRadius = Radius.circular(8);

// Standard iOS 10 tab bar height.
const double _kTabBarHeight = 50.0;

// Used for iOS "Inset Grouped" margin, determined from SwiftUI's Forms in
// iOS 14.2 SDK.
const EdgeInsetsDirectional _kDefaultInsetGroupedRowsMargin =
    EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0);

/// Default value for [thickness] if it's not specified in [CupertinoScrollbar].
const double defaultThickness = 3;
/// Default value for [thicknessWhileDragging] if it's not specified in
/// [CupertinoScrollbar].
const double defaultThicknessWhileDragging = 8.0;
/// Default value for [radius] if it's not specified in [CupertinoScrollbar].
const Radius defaultRadius = Radius.circular(1.5);
/// Default value for [radiusWhileDragging] if it's not specified in
/// [CupertinoScrollbar].
const Radius defaultRadiusWhileDragging = Radius.circular(4.0);
mixin _ScrollUnderFlexibleConfig {
  TextStyle? get collapsedTextStyle;
  TextStyle? get expandedTextStyle;
  EdgeInsetsGeometry? get collapsedTitlePadding;
  EdgeInsetsGeometry? get collapsedCenteredTitlePadding;
  EdgeInsetsGeometry? get expandedTitlePadding;
}
// Variant configuration
class _MediumScrollUnderFlexibleConfig with _ScrollUnderFlexibleConfig {
  _MediumScrollUnderFlexibleConfig(this.context);

  final BuildContext context;
  late final ThemeData _theme = Theme.of(context);
  late final ColorScheme _colors = _theme.colorScheme;
  late final TextTheme _textTheme = _theme.textTheme;

  static const double collapsedHeight = 64.0;
  
  @override
  TextStyle? get collapsedTextStyle =>
    _textTheme.titleLarge?.apply(color: _colors.onSurface);

  @override
  TextStyle? get expandedTextStyle =>
    _textTheme.headlineSmall?.apply(color: _colors.onSurface);

  @override
  EdgeInsetsGeometry? get collapsedTitlePadding => const EdgeInsetsDirectional.fromSTEB(48, 0, 16, 0);

  @override
  EdgeInsetsGeometry? get collapsedCenteredTitlePadding => const EdgeInsets.fromLTRB(16, 0, 16, 0);

  @override
  EdgeInsetsGeometry? get expandedTitlePadding => const EdgeInsets.fromLTRB(16, 0, 16, 20);
}

class _LargeScrollUnderFlexibleConfig with _ScrollUnderFlexibleConfig {
  _LargeScrollUnderFlexibleConfig(this.context);

  final BuildContext context;
  late final ThemeData _theme = Theme.of(context);
  late final ColorScheme _colors = _theme.colorScheme;
  late final TextTheme _textTheme = _theme.textTheme;

  static const double collapsedHeight = 64.0;

  @override
  TextStyle? get collapsedTextStyle =>
    _textTheme.titleLarge?.apply(color: _colors.onSurface);

  @override
  TextStyle? get expandedTextStyle =>
    _textTheme.headlineMedium?.apply(color: _colors.onSurface);

  @override
  EdgeInsetsGeometry? get collapsedTitlePadding => const EdgeInsetsDirectional.fromSTEB(48, 0, 16, 0);

  @override
  EdgeInsetsGeometry? get collapsedCenteredTitlePadding => const EdgeInsets.fromLTRB(16, 0, 16, 0);

  @override
  EdgeInsetsGeometry? get expandedTitlePadding => const EdgeInsets.fromLTRB(16, 0, 16, 28);
}

Widget _defaultFieldViewBuilder(BuildContext context, TextEditingController textEditingController, FocusNode focusNode, VoidCallback onFieldSubmitted) {
  return _AutocompleteField(
    focusNode: focusNode,
    textEditingController: textEditingController,
    onFieldSubmitted: onFieldSubmitted,
  );
}
// The default Material-style Autocomplete text field.
class _AutocompleteField extends StatelessWidget {
  const _AutocompleteField({
    required this.focusNode,
    required this.textEditingController,
    required this.onFieldSubmitted,
  });

  final FocusNode focusNode;

  final VoidCallback onFieldSubmitted;

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      focusNode: focusNode,
      onFieldSubmitted: (String value) {
        onFieldSubmitted();
      },
    );
  }
}
/// Default stroke width.
const double defaultStrokeWidth = 2.5;
const double _kMinThumbExtent = 18.0;
const double _kScrollbarThickness = 6.0;
const Duration _kScrollbarFadeDuration = Duration(milliseconds: 300);
const Duration _kScrollbarTimeToFade = Duration(milliseconds: 600);
const Set<TargetPlatform> _kMobilePlatforms = <TargetPlatform>{
  TargetPlatform.android,
  TargetPlatform.iOS,
  TargetPlatform.fuchsia,
};
/// The default way to convert an option to a string in
/// [displayStringForOption].
///
/// Simply uses the `toString` method on the option.
String defaultStringForOption(dynamic option) {
  return option.toString();
}
const int _kColorDefault = 0xFF000000;
Widget _buildCupertinoDialogTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
  final CurvedAnimation fadeAnimation = CurvedAnimation(
    parent: animation,
    curve: Curves.easeInOut,
  );
  if (animation.status == AnimationStatus.reverse) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: child,
    );
  }
  return FadeTransition(
    opacity: fadeAnimation,
    child: ScaleTransition(
      scale: animation.drive(_dialogScaleTween),
      child: child,
    ),
  );
}

const List<BoxShadow> _kSwitchBoxShadows = <BoxShadow> [
  BoxShadow(
    color: Color(0x26000000),
    offset: Offset(0, 3),
    blurRadius: 8.0,
  ),
  BoxShadow(
    color: Color(0x0F000000),
    offset: Offset(0, 3),
    blurRadius: 1.0,
  ),
];

const List<BoxShadow> _kSliderBoxShadows = <BoxShadow> [
  BoxShadow(
    color: Color(0x26000000),
    offset: Offset(0, 3),
    blurRadius: 8.0,
  ),
  BoxShadow(
    color: Color(0x29000000),
    offset: Offset(0, 1),
    blurRadius: 1.0,
  ),
  BoxShadow(
    color: Color(0x1A000000),
    offset: Offset(0, 3),
    blurRadius: 1.0,
  ),
];

const Map<TargetPlatform, PageTransitionsBuilder> _defaultBuilders = <TargetPlatform, PageTransitionsBuilder>{
  TargetPlatform.android: ZoomPageTransitionsBuilder(),
  TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
};

const Duration _kDefaultHighlightFadeDuration = Duration(milliseconds: 200);

// An eyeballed value for a smooth scrolling experience.
const double _kDefaultAutoScrollVelocityScalar = 7;
// The curve and initial scale values were mostly eyeballed from iOS, however
// they reuse the same animation curve that was modeled after native page
// transitions.
final Animatable<double> _dialogScaleTween = Tween<double>(begin: 1.3, end: 1.0)
  .chain(CurveTween(curve: Curves.linearToEaseOut));

 // Modifier key masks.

 /// No modifier keys are pressed in the [metaState] field.
 ///
 /// Use this value if you need to decode the [metaState] field yourself, but
 /// it's much easier to use [isModifierPressed] if you just want to know if
 /// a modifier is pressed.
 const int modifierNone = 0;
 Widget _defaultTransitionsBuilder(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
  return child;
}
NavigatorState _defaultNavigatorFinder(BuildContext context) => Navigator.of(context);
int _kDefaultSemanticIndexCallback(Widget _, int localIndex) => localIndex;  
''';

Map<String, String> _fixes = <String, String>{
  '(props) => DiagnosticableNode(':
      '(props) => DiagnosticableNode<Diagnosticable>(',
  '(props) => HitTestEntry(': '(props) => HitTestEntry<HitTestTarget>(',
  '(props) => RenderAnnotatedRegion(':
      '(props) => RenderAnnotatedRegion<Object>(',
  '(props) => LayerHandle(': '(props) => LayerHandle<Layer>(',
  '(props) => AnnotatedRegionLayer(':
      '(props) => AnnotatedRegionLayer<Object>(',
  '(props) => Actions.handler(': '(props) => Actions.handler<Intent>(',
  '(props) => Actions.find(': '(props) => Actions.find<Intent>(',
  '(props) => Actions.maybeFind(': '(props) => Actions.maybeFind<Intent>(',
  '(props) => Actions.maybeInvoke(': '(props) => Actions.maybeInvoke<Intent>(',
  'Actions.invoke(': 'Actions.invoke<Intent>(',
  '(props) => AnnotatedRegion(': '(props) => AnnotatedRegion<Object>(',
  '(props) => SharedAppData.getValue(':
      '(props) => SharedAppData.getValue<Object, dynamic>(',
  '(props) => SharedAppData.setValue(':
      '(props) => SharedAppData.setValue<Object, dynamic>(',
  'children: as<List>(props[\'children\']),':
      'children: as<List<RenderBox>>(props[\'children\']),',
  '(props) => KeySet(': '(props) => KeySet<KeyboardKey>(',
  '(props) => IndexedSlot(': '(props) => IndexedSlot<Element?>(',
  '(props) => DisposableBuildContext(':
      '(props) => DisposableBuildContext<State>(',
  '(props) => RestorableNumN(': '(props) => RestorableNumN<num?>(',
  '(props) => RestorableNum(': '(props) => RestorableNum<num>(',
  '?? null': '',
  // dart:ui 里面的 TextStyle
  '''  'TextStyle': (props) => TextStyle(
        color: props['color'],
        decoration: props['decoration'],
        decorationColor: props['decorationColor'],
        decorationStyle: props['decorationStyle'],
        decorationThickness: props['decorationThickness']?.toDouble(),
        fontWeight: props['fontWeight'],
        fontStyle: props['fontStyle'],
        textBaseline: props['textBaseline'],
        fontFamily: props['fontFamily'],
        fontFamilyFallback: as<String>(props['fontFamilyFallback']),
        fontSize: props['fontSize']?.toDouble(),
        letterSpacing: props['letterSpacing']?.toDouble(),
        wordSpacing: props['wordSpacing']?.toDouble(),
        height: props['height']?.toDouble(),
        leadingDistribution: props['leadingDistribution'],
        locale: props['locale'],
        background: props['background'],
        foreground: props['foreground'],
        shadows: as<Shadow>(props['shadows']),
        fontFeatures: as<FontFeature>(props['fontFeatures']),
        fontVariations: as<FontVariation>(props['fontVariations']),
      ),''': '',
  '''  'Gradient.linear': (props) => Gradient.linear(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
        as<double>(props['pa'][3]),
        props['pa'][4] ?? TileMode.clamp,
        props['pa'][5],
      ),
  'Gradient.radial': (props) => Gradient.radial(
        props['pa'][0],
        props['pa'][1]?.toDouble(),
        props['pa'][2],
        as<double>(props['pa'][3]),
        props['pa'][4] ?? TileMode.clamp,
        props['pa'][5],
        props['pa'][6],
        props['pa'][7]?.toDouble() ?? 0.0,
      ),
  'Gradient.sweep': (props) => Gradient.sweep(
        props['pa'][0],
        props['pa'][1],
        as<double>(props['pa'][2]),
        props['pa'][3] ?? TileMode.clamp,
        props['pa'][4]?.toDouble() ?? 0.0,
        props['pa'][5]?.toDouble() ?? math.pi * 2,
        props['pa'][6],
      ),''': '',
  '''  'PlatformConfiguration': (props) => PlatformConfiguration(
        accessibilityFeatures:
            props['accessibilityFeatures'] ?? const AccessibilityFeatures._(0),
        alwaysUse24HourFormat: props['alwaysUse24HourFormat'] ?? false,
        semanticsEnabled: props['semanticsEnabled'] ?? false,
        platformBrightness: props['platformBrightness'] ?? Brightness.light,
        textScaleFactor: props['textScaleFactor']?.toDouble() ?? 1.0,
        locales: as<Locale>(props['locales']) ?? const <Locale>[],
        defaultRouteName: props['defaultRouteName'],
        systemFontFamily: props['systemFontFamily'],
      ),
  'ViewConfiguration': (props) => ViewConfiguration(
        window: props['window'],
        devicePixelRatio: props['devicePixelRatio']?.toDouble() ?? 1.0,
        geometry: props['geometry'] ?? Rect.zero,
        visible: props['visible'] ?? false,
        viewInsets: props['viewInsets'] ?? WindowPadding.zero,
        viewPadding: props['viewPadding'] ?? WindowPadding.zero,
        systemGestureInsets: props['systemGestureInsets'] ?? WindowPadding.zero,
        padding: props['padding'] ?? WindowPadding.zero,
        gestureSettings: props['gestureSettings'] ?? const GestureSettings(),
        displayFeatures: as<DisplayFeature>(props['displayFeatures']) ??
            const <DisplayFeature>[],
      ),''': '',
  '''import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;''': '',
  '''  'StrutStyle': (props) => StrutStyle(
        fontFamily: props['fontFamily'],
        fontFamilyFallback: as<String>(props['fontFamilyFallback']),
        fontSize: props['fontSize']?.toDouble(),
        height: props['height']?.toDouble(),
        leadingDistribution: props['leadingDistribution'],
        leading: props['leading']?.toDouble(),
        fontWeight: props['fontWeight'],
        fontStyle: props['fontStyle'],
        forceStrutHeight: props['forceStrutHeight'],
      ),''': '',
};

void main(List<String> args) async {
  Directory projectDirectory = Directory.current;
  while (!projectDirectory.path.endsWith('fair_gallery')) {
    projectDirectory = projectDirectory.parent;
  }
  processRun(
    executable: 'flutter',
    arguments: 'clean ${projectDirectory.path}',
  );
  processRun(
    executable: 'flutter',
    arguments: 'packages get ${projectDirectory.path}',
  );

  final File dartRunFile = File(Platform.executable);
  var cacheDirectory = dartRunFile.parent;
  while (!cacheDirectory.path.endsWith('cache')) {
    cacheDirectory = cacheDirectory.parent;
  }

  var flutterDirectory = cacheDirectory.parent.parent;

  // Directory flutterLib = Directory(path.join(
  //   flutterDirectory.path,
  //   'packages',
  //   'flutter',
  //   'lib',
  // ));

  // 把 flutter 源码复制到 .dart_tool下面，不然 analyzer 会有bug
  processRun(
      executable: 'cp',
      arguments: '-r ${path.join(
        flutterDirectory.path,
        'packages',
        'flutter',
      )} ${path.join(
        projectDirectory.path,
        '.dart_tool',
      )}');
// 把 dart 源码复制到 .dart_tool下面，不然 analyzer 会有bug
  processRun(
      executable: 'cp',
      arguments: '-r ${path.join(
        cacheDirectory.path,
        'pkg',
        'sky_engine',
      )} ${path.join(
        projectDirectory.path,
        '.dart_tool',
      )}');

  processRun(
      executable: 'flutter',
      arguments: 'packages get ${path.join(
        projectDirectory.path,
        '.dart_tool',
        'flutter',
      )}');

  processRun(
      executable: 'dart',
      arguments: 'pub get ${path.join(
        projectDirectory.path,
        '.dart_tool',
        'sky_engine',
      )}');

  var collection = AnalysisContextCollection(includedPaths: [
    path.join(
      projectDirectory.path,
      '.dart_tool',
      'flutter',
      'lib',
    ),
    path.join(
      projectDirectory.path,
      '.dart_tool',
      'sky_engine',
      'lib',
      'ui',
    ),
  ]);

  var components = <ComponentParts>[];
  var transformer = TransformProxy();
  // skip some folders
  var skip = <String>[
    // 'scheduler',
    // 'semantics',
  ];
  for (final AnalysisContext context in collection.contexts) {
    for (final filePath in context.contextRoot.analyzedFiles()) {
      var dirname = path.dirname(filePath);
      if (skip.any((element) => dirname.endsWith(element))) {
        continue;
      }
      if (filePath.endsWith('.dart') &&
          (transformer.skipSource
                  .indexWhere((skip) => filePath.endsWith(skip)) ==
              -1)) {
        var w = await processFile(context, filePath, analysisAllClasses: true);
        if (w?.components?.isNotEmpty != true) continue;
        components.add(w!);
      }
    }
  }

  Set<String> allImports = <String>{};
  Set<String> lines = <String>{};
  Set<String> flutterMapping = <String>{};
  Set<String> flutterComponents = <String>{};
  int widgetCount = 0;
  int apiCount = 0;
  for (var component in components) {
    if (component.components != null) {
      for (var element in component.components!) {
        if (element.isWidget!) {
          widgetCount++;
        } else {
          apiCount++;
        }
        flutterMapping.add('\'${element.name}\': ${element.isWidget},');
      }
    }

    if (component.imports != null) {
      for (var import in component.imports!) {
        allImports.add('import \'$import\';');
      }
    }

    if (component.lines != null) {
      for (var line in component.lines!) {
        lines.add(line);
      }
    }

    if (component.body != null) {
      flutterComponents.add(component.body!);
    }
  }

  var sortLines = lines.toList()
    ..sort((a, b) =>
        a.startsWith('import') ? -1 : (b.startsWith('import') ? 1 : 0));

  allImports.addAll(_imports.split('\n'));

  var flutterVersion = jsonDecode(
    processRun(executable: 'flutter', arguments: '--version --machine'),
  );
  // {
  //   "frameworkVersion": "3.3.9",
  //   "channel": "stable",
  //   "repositoryUrl": "https://github.com/flutter/flutter.git",
  //   "frameworkRevision": "b8f7f1f9869bb2d116aa6a70dbeac61000b52849",
  //   "frameworkCommitDate": "2022-11-23 06:43:51 +0900",
  //   "engineRevision": "8f2221fbef28b478debb78dd233f5250b220ca99",
  //   "dartSdkVersion": "2.18.5",
  //   "devToolsVersion": "2.15.0",
  //   "flutterRoot": ""
  // }

  var fileContent = _template
      .replaceAll(
        '{0}',
        allImports.join('\n'),
      )
      .replaceAll(
        '{1}',
        sortLines.join('\n'),
      )
      .replaceAll(
        '{2}',
        _codes,
      )
      .replaceAll(
        '{3}',
        flutterComponents.join('\n'),
      )
      .replaceAll(
        '{4}',
        flutterMapping.join('\n'),
      )
      .replaceAll(
        '{5}',
        flutterVersion['frameworkVersion'],
      )
      .replaceAll(
        '{6}',
        flutterVersion['dartSdkVersion'],
      )
      .replaceAll(
        '{7}',
        widgetCount.toString(),
      )
      .replaceAll(
        '{8}',
        apiCount.toString(),
      );
  fileContent = _dartFormatter.format(fileContent);
  for (var key in _fixes.keys) {
    fileContent = fileContent.replaceAll(key, _fixes[key]!);
  }

  fileContent = _dartFormatter.format(fileContent);

  final File file = File(path.join(
    projectDirectory.path,
    'lib',
    'src',
    'flutter.generated.fair.dart',
  ));
  if (!file.existsSync()) {
    file.createSync(recursive: true);
  }
  file.writeAsStringSync(fileContent);

  print('create widget bindings: $widgetCount and api bindings: $apiCount;');
}

String processRun({
  required String executable,
  required String arguments,
  bool runInShell = false,
  String? workingDirectory,
}) {
  final ProcessResult result = Process.runSync(
    executable,
    arguments.split(' '),
    runInShell: runInShell,
    workingDirectory: workingDirectory,
  );
  if (result.exitCode != 0) {
    print('${result.stdout}\n');
    // print(ansi.red.wrap('${result.stderr}'));

    //throw Exception(result.stderr);
  }
  print('${result.stdout}\n');
  return result.stdout;
}

String _template = '''
// ignore_for_file: deprecated_member_use, prefer_single_quotes, unused_element, unused_field

{0}

{1}

{2}

/// flutterVersion = '{5}';
/// dartVersion = '{6}';
/// widgetCount = {7};
/// apiCount = {8};
Map<String, dynamic> flutterComponents= {
  {3}
};

Map<String, bool> flutterMapping= {
  {4}
};
''';

// ignore_for_file: avoid_print

import 'dart:io';
import 'package:path/path.dart' as path;

import '../util/binding.dart';
import '../util/utils.dart';

// import 'package:flutter/widgets.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/semantics.dart';
// import 'package:flutter/animation.dart';
String _imports = '''
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'dart:ui';
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
  '''import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;''': '',
};

void main(List<String> args) async {
  Directory projectDirectory = getProjectDirectory();

  final File dartRunFile = File(Platform.executable);
  var cacheDirectory = dartRunFile.parent;
  while (!cacheDirectory.path.endsWith('cache')) {
    cacheDirectory = cacheDirectory.parent;
  }

  var flutterDirectory = cacheDirectory.parent.parent;

  // 把 flutter 源码复制到 .dart_tool下面，不然 analyzer 会有bug

  copyAndPackageGet(
    projectDirectory: projectDirectory,
    packageName: 'flutter',
    copyForm: path.join(
      flutterDirectory.path,
      'packages',
      'flutter/',
    ),
  );

  // 把 dart 源码复制到 .dart_tool下面，不然 analyzer 会有bug
  copyAndPackageGet(
    projectDirectory: projectDirectory,
    packageName: 'sky_engine',
    copyForm: path.join(
      cacheDirectory.path,
      'pkg',
      'sky_engine/',
    ),
  );

  await createBindings(
    componentSkips: {
      // dart:ui 里面的
      'Gradient.linear',
      'Gradient.radial',
      'Gradient.sweep',
      // 支持正则
      // '^Icons.*',
      // '^Diagnostic*',
      // '^Render*',
      // '^CupertinoIcons.*',
      // '^RawKeyEventDataMacOs.*',
      // '^RawKeyEventDataWeb.*',
      // '^RawKeyEventDataWindows.*',
      // '^RawKeyEventDataFuchsia.*',
    },
    projectDirectory: projectDirectory,
    includedPaths: [
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
    ],
    fileName: 'Flutter',

    imports: _imports,
    codes: _codes,
    fixes: _fixes,
    functionDomainImports: '''
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' show Quad;
''',
    functionDomainFixes: {
      'T Function()': 'GestureRecognizer Function()',
      'T? Function()': 'dynamic Function()',
      'V Function()': 'dynamic Function()',
      'Widget? Function(BuildContext, {required int currentLength, required bool isFocused, required int? maxLength})':
          'Widget? Function(BuildContext, {required int currentLength, required int? maxLength, required bool isFocused})',
    },
    // FunctionType 的 fullElement
    // 有些是不会用的，特别是一些泛型
    functionDomainSkips: {},
  );

  // dartFix();
}

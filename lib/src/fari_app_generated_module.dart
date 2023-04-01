import 'package:fair_gallery/src/flutter.generated.fair.dart';
import 'package:fair_gallery/src/utils/text/my_extended_text_selection_controls.dart';
import 'package:fair_gallery/src/utils/text/my_special_text_span_builder.dart';
import 'package:flutter/widgets.dart';

import 'generated.fair.dart';

class FairAppGeneratedModule extends AppGeneratedModule {
  @override
  Map<String, dynamic> components() {
    return <String, dynamic>{
      ...super.components(),
      ...flutterComponents,
      'NeverScrollableScrollPhysics': (props) => props['parent'] != null
          ? NeverScrollableScrollPhysics(parent: props['parent'])
          : const NeverScrollableScrollPhysics(),
      'BouncingScrollPhysics': (props) => props['parent'] != null
          ? BouncingScrollPhysics(parent: props['parent'])
          : const BouncingScrollPhysics(),
      'ClampingScrollPhysics': (props) => props['parent'] != null
          ? ClampingScrollPhysics(parent: props['parent'])
          : const ClampingScrollPhysics(),
      'MySpecialTextSpanBuilder': (props) => MySpecialTextSpanBuilder(),
      'MyTextSelectionControls': (props) => MyTextSelectionControls(),
      // add your cases here.
    };
  }

  /// true means it's a widget.
  @override
  Map<String, bool> mapping() {
    return <String, bool>{
      ...super.mapping(),
      ...flutterMapping,
      'NeverScrollableScrollPhysics': false,
      'BouncingScrollPhysics': false,
      'ClampingScrollPhysics': false,
      'MySpecialTextSpanBuilder': false,
      'MyTextSelectionControls': false,
      // remember add your cases here too.
    };
  }
}

import 'package:extended_image/extended_image.dart';
import 'package:fair_gallery/src/utils/text/my_extended_text_selection_controls.dart';
import 'package:fair_gallery/src/utils/text/my_special_text_span_builder.dart';
import 'package:fair_gallery/src/widget/push_to_refresh_header.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:loading_more_list/loading_more_list.dart';

import 'generated.fair.dart';

class FairAppGeneratedModule extends AppGeneratedModule {
  @override
  Map<String, dynamic> components() {
    return <String, dynamic>{
      ...super.components(),
      'ListConfig': (props) => ListConfig(
            itemBuilder: props['itemBuilder'],
            sourceList: props['sourceList'],
            showGlowLeading: props['showGlowLeading'] ?? true,
            showGlowTrailing: props['showGlowTrailing'] ?? true,
            indicatorBuilder: props['indicatorBuilder'],
            gridDelegate: props['gridDelegate'],
            scrollDirection: props['scrollDirection'] ?? Axis.vertical,
            reverse: props['reverse'] ?? false,
            controller: props['controller'],
            primary: props['primary'],
            physics: props['physics'],
            shrinkWrap: props['shrinkWrap'] ?? false,
            padding: props['padding'] ?? const EdgeInsets.all(0.0),
            itemExtent: props['itemExtent']?.toDouble(),
            itemCount: props['itemCount'],
            addAutomaticKeepAlives: props['addAutomaticKeepAlives'] ?? true,
            addRepaintBoundaries: props['addRepaintBoundaries'] ?? true,
            addSemanticIndexes: props['addSemanticIndexes'] ?? true,
            cacheExtent: props['cacheExtent']?.toDouble(),
            semanticChildCount: props['semanticChildCount'],
            autoLoadMore: props['autoLoadMore'] ?? true,
            extendedListDelegate: props['extendedListDelegate'],
            lastChildLayoutType:
                props['lastChildLayoutType'] ?? LastChildLayoutType.foot,
            autoRefresh: props['autoRefresh'] ?? true,
            itemCountBuilder: props['itemCountBuilder'],
            dragStartBehavior:
                props['dragStartBehavior'] ?? DragStartBehavior.start,
            keyboardDismissBehavior: props['keyboardDismissBehavior'] ??
                ScrollViewKeyboardDismissBehavior.manual,
            restorationId: props['restorationId'],
            clipBehavior: props['clipBehavior'] ?? Clip.hardEdge,
            getActualIndex: props['getActualIndex'],
          ),
      'NeverScrollableScrollPhysics': (props) =>
          const NeverScrollableScrollPhysics(),
      'BouncingScrollPhysics': (props) => const BouncingScrollPhysics(),
      'ExtendedPageController': (props) => ExtendedPageController(
            initialPage: props['initialPage'] ?? 0,
            keepPage: props['keepPage'] ?? true,
            viewportFraction: props['viewportFraction']?.toDouble() ?? 1.0,
            pageSpacing: props['pageSpacing']?.toDouble() ?? 0.0,
            shouldIgnorePointerWhenScrolling:
                props['shouldIgnorePointerWhenScrolling'] ?? false,
          ),
      'SliverGridDelegateWithFixedCrossAxisCount': (props) =>
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: props['crossAxisCount'],
            mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0,
            crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0,
            childAspectRatio: props['childAspectRatio']?.toDouble() ?? 1,
            mainAxisExtent: props['mainAxisExtent']?.toDouble(),
          ),
      'MySpecialTextSpanBuilder': (props) => MySpecialTextSpanBuilder(),
      'MyTextSelectionControls': (props) => MyTextSelectionControls(),
      'PullToRefreshHeader': (props) {
        // 这里 DateTime lastRefreshTime 需要自己转换一下
        //
        var dateTime = props['pa'][1];
        // 从 js 那边获取的 DateTime
        if (dateTime is Map) {
          // var isUtc = dateTime['isUtc'];
          var dateTimeS = dateTime['__date__'];
          dateTime = DateTime.tryParse(dateTimeS);
        }
        return PullToRefreshHeader(
          props['pa'][0],
          dateTime,
          key: props['key'],
          color: props['color'],
        );
      },
      // add your cases here.
    };
  }

  /// true means it's a widget.
  @override
  Map<String, bool> mapping() {
    return <String, bool>{
      ...super.mapping(),
      'ListConfig': false,
      'NeverScrollableScrollPhysics': false,
      'ExtendedPageController': false,
      'BouncingScrollPhysics': false,
      'SliverGridDelegateWithFixedCrossAxisCount': false,
      'MySpecialTextSpanBuilder': false,
      'MyTextSelectionControls': false,
      // remember add your cases here too.
    };
  }
}

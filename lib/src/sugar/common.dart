import 'dart:math';

import 'package:extended_image/extended_image.dart';
import 'package:fair/fair.dart';
import 'package:fair_gallery/src/utils/repository.dart';
import 'package:fair_gallery/src/widget/share_data_widget.dart';
import 'package:fair_gallery/src/widget/push_to_refresh_header.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:loading_more_list/loading_more_list.dart';
import 'package:pull_to_refresh_notification/pull_to_refresh_notification.dart';

class SugarCommon {
  SugarCommon._();

  static PullToRefreshContainerBuilder pullToRefreshContainerBuilder() {
    return (PullToRefreshScrollNotificationInfo? info) {
      return Builder(builder: (context) {
        var repository = ShareDataWidget.of(context) as LoadingMoreRepository;
        return PullToRefreshHeader(info, repository.dateTimeNow);
      });
    };
  }

  static LoadStateChanged onImageStateChanged({
    Widget? loadingWidget,
    Widget? failedWidget,
  }) {
    return (ExtendedImageState state) {
      switch (state.extendedImageLoadState) {
        case LoadState.loading:
          return loadingWidget;
        case LoadState.completed:
          break;
        case LoadState.failed:
          return failedWidget;
        default:
      }
      return null;
    };
  }

  static double colorComputeLuminance(Color color) {
    return color.computeLuminance();
  }

  static final List<Color> _color = <Color>[];
  static Color getRandomColor(int index) {
    while (_color.length <= index) {
      _color.add(Color.fromARGB(255, Random.secure().nextInt(255),
          Random.secure().nextInt(255), Random.secure().nextInt(255)));
    }

    return _color[index];
  }

  static Color getLuminanceColor(double luminance) {
    return luminance < 0.5 ? Colors.white : Colors.black;
  }

  static LikeButtonTapCallback likeButtonTapCallback(
    BuildContext context,
    int index,
  ) {
    return (bool isLiked) async {
      var item = ShareDataWidget.getValue(context, ['item']);
      if (item != null) {
        item['is_favorite'] = !isLiked;
      }
      return !isLiked;
    };
  }

  static Function() voidCallBack({
    required Function function,
    required dynamic value,
  }) {
    return () {
      function.call(value);
    };
  }

  // static Function() voidCallBack1({
  //   required Function function,
  //   required dynamic value,
  //   required dynamic value1,
  // }) {
  //   return () {
  //     function.call([value, value1]);
  //   };
  // }

  static List<String> Function() callBack({
    required Function function,
    required List<dynamic> values,
  }) {
    return () {
      return Function.apply(function, values);
    };
  }

  static OnSlidingPage onSlidingPage(Function(bool) callBack) {
    return (ExtendedImageSlidePageState state) {
      callBack(state.isSliding);
    };
  }

  static LoadingMoreIndicatorBuilder loadingMoreIndicatorBuilder(
    List<SugarSwitchCaseObj<IndicatorStatus, Widget>> caseObjects, {
    Function? tryAgain,
    String? text,
    Color? backgroundColor,
    bool isSliver = false,
    Widget? emptyWidget,
  }) {
    return (
      BuildContext context,
      IndicatorStatus status,
    ) {
      for (SugarSwitchCaseObj<IndicatorStatus, Widget?> sugarCase
          in caseObjects) {
        if (sugarCase.sugarCase() == status) {
          return sugarCase.reValue();
        }
      }
      return IndicatorWidget(
        status,
        tryAgain: tryAgain,
        text: text,
        backgroundColor: backgroundColor,
        isSliver: isSliver,
        emptyWidget: emptyWidget,
      );
    };
  }

  static LoadingMoreItemBuilder loadingMoreItemBuilder(
      Widget Function(
    BuildContext context,
    dynamic loadingMoreItem,
    int loadingMoreIndex,
  )
          loadingMoreItemBuilder) {
    return loadingMoreItemBuilder;
  }

  static dynamic nullOrDefault(dynamic value, dynamic defaultValue) =>
      value ?? defaultValue;
}

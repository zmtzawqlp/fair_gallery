// ignore_for_file: unused_import, unnecessary_import, implementation_imports, unused_shown_name, deprecated_member_use, prefer_single_quotes, unused_element, unused_field, duplicate_import, prefer_const_constructors
import 'package:flutter/gestures.dart';
import 'package:extended_text_library/extended_text_library.dart'
    as extended_text_library;
import 'package:extended_image/extended_image.dart';
import 'package:http/http.dart';
import 'package:http_client_helper/http_client_helper.dart';
import 'dart:async';
import 'dart:ui' as ui show Codec;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:extended_image_library/src/extended_image_provider.dart';
import 'package:flutter/widgets.dart' hide FileImage;
import 'package:extended_image_library/src/platform.dart';
import 'dart:typed_data';
import 'dart:ui' as ui show Codec, ImmutableBuffer;
import 'package:extended_image_library/src/extended_resize_image_provider.dart';
import 'package:flutter/painting.dart' hide imageCache;
import 'package:flutter/painting.dart';
import 'package:extended_image_library/src/_network_image_io.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:extended_image_library/extended_image_library.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;
import 'package:extended_image/src/image/raw_image.dart';
import 'package:extended_image/src/utils.dart';
import 'package:extended_image/src/extended_image.dart';
import 'package:extended_image/src/editor/crop_layer.dart';
import 'package:extended_image/src/editor/editor_utils.dart';
import 'package:extended_image/src/typedef.dart';
import 'package:extended_image/src/border_painter.dart';
import 'package:extended_image/src/gesture/gesture.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter/semantics.dart';
import 'package:extended_image/src/editor/editor.dart';
import 'package:extended_image/src/gesture/slide_page.dart';
import 'package:extended_image/src/gesture/slide_page_handler.dart';
import 'package:extended_image/src/gesture/utils.dart';
import 'package:extended_image/src/gesture/page_view/gesture_page_view.dart';
import 'package:extended_image/src/gesture_detector/drag.dart';
import 'dart:math' as math;
import 'package:extended_image/src/gesture/page_view/rendering/sliver_fill.dart';
import 'dart:ui' as ui show Image;
import 'package:extended_image/src/image/render_image.dart';
import 'package:extended_image/src/image/painting.dart';
import 'package:extended_sliver/extended_sliver.dart';
import 'package:extended_sliver/src/element.dart';
import 'package:extended_sliver/src/rendering.dart';
import 'package:extended_text/extended_text.dart';
import 'package:extended_text_library/src/special_text_span.dart';
import 'package:extended_text_library/src/text_painter_helper.dart';
import 'package:extended_text_library/extended_text_library.dart';
import 'dart:ui' as ui show PlaceholderAlignment, ParagraphBuilder;
import 'package:extended_text_library/src/special_inline_span_base.dart';
import 'package:extended_text_library/src/extended_text_utils.dart';
import 'dart:ui' as ui show PlaceholderAlignment;
import 'package:extended_text_library/src/extended_widget_span.dart';
import 'dart:ui' as ui show PlaceholderAlignment, BoxWidthStyle, BoxHeightStyle;
import 'package:extended_text_library/src/render_object/extended_text_selection_render_object.dart';
import 'package:flutter/scheduler.dart';
import 'package:extended_text_library/src/extended_text_typedef.dart';
import 'dart:collection';
import 'dart:ui' as ui
    show
        Gradient,
        Shader,
        TextBox,
        TextHeightBehavior,
        BoxWidthStyle,
        BoxHeightStyle;
import 'package:extended_text/src/text_overflow_widget.dart';
import 'dart:ui' as ui show TextHeightBehavior, BoxWidthStyle, BoxHeightStyle;
import 'package:extended_text/src/extended_rich_text.dart';
import 'package:extended_text/src/selection/extended_text_selection.dart';
import 'package:extended_text/src/extended_render_paragraph.dart';
import 'package:extended_text/src/selection/extended_text_selection_pointer_handler.dart';
import 'package:extended_text/src/extended_text_typedef.dart';
import 'package:keframe/keframe.dart';
import 'dart:developer';
import 'package:keframe/src/logcat.dart';
import 'package:keframe/src/frame_separate_task.dart';
import 'package:keframe/src/layout_proxy.dart';
import 'package:keframe/src/size_cache_widget.dart';
import 'package:keframe/src/notification.dart';
import 'package:like_button/like_button.dart';
import 'package:like_button/src/painter/bubbles_painter.dart';
import 'package:like_button/src/painter/circle_painter.dart';
import 'package:like_button/src/utils/like_button_model.dart';
import 'package:like_button/src/utils/like_button_typedef.dart';
import 'package:like_button/src/utils/like_button_util.dart';
import 'package:loading_more_list/loading_more_list.dart';
import 'package:extended_list_library/src/typedef.dart';
import 'package:extended_list_library/src/extended_list_library.dart';
import 'package:extended_list_library/extended_list_library.dart';
import 'package:meta/meta.dart';
import 'package:loading_more_list_library/loading_more_list_library.dart';
import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart' hide ViewportBuilder;
import 'package:waterfall_flow/src/rendering/sliver_waterfall_flow.dart';
import 'package:waterfall_flow/src/widgets/sliver.dart';
import 'package:waterfall_flow/waterfall_flow.dart';
import 'package:loading_more_list/src/empty_widget.dart';
import 'package:extended_list/extended_list.dart';
import 'package:loading_more_list/src/list_config/loading_more_list_config.dart';
import 'package:loading_more_list/src/indicator_widget.dart';
import 'package:loading_more_list/src/list_config/sliver_list_config.dart';
import 'package:loading_more_list/src/glow_notification_widget.dart';
import 'package:loading_more_list/src/list_config/list_config.dart';
import 'package:oktoast/oktoast.dart';
import 'package:flutter/material.dart' hide Overlay, OverlayEntry, OverlayState;
import 'package:oktoast/src/widget/animation/animation_builder.dart';
import 'package:oktoast/src/widget/overlay.dart';
import 'package:oktoast/src/core/position.dart';
import 'package:oktoast/src/core/toast_manager.dart';
import 'package:pull_to_refresh_notification/pull_to_refresh_notification.dart';
import 'package:flutter/cupertino.dart' show CupertinoDynamicColor;
import 'package:fair_gallery/src/sugar/common.dart';
import 'package:fair_gallery/src/sugar/dart_core.dart';
import 'package:fair_gallery/src/sugar/extension.dart';
import 'package:fair_gallery/assets.dart';
import 'package:fair_gallery/src/widget/extended_fair_widget.dart';
import 'package:fair_gallery/src/widget/share_data_widget.dart';
import 'package:fair_gallery/src/widget/push_to_refresh_header.dart';
import 'package:fair_gallery/src/widget/hero_widget.dart';
import 'package:fair_gallery/src/widget/image_grid.dart';
import 'package:fair_gallery/src/utils/repository.dart';
import 'package:fair_gallery/src/widget/frame_separate_widget.dart';
import 'package:fair/fair.dart';

int _kDefaultSemanticIndexCallback(Widget _, int localIndex) => localIndex;

/// flutterVersion = '3.3.9';
/// dartVersion = '2.18.5';
/// widgetCount = 41;
/// apiCount = 80;
Map<String, dynamic> appComponents = {
  'Assets.assets_fair_lib_src_page_photo_gallery_fair_bin':
      Assets.assets_fair_lib_src_page_photo_gallery_fair_bin,
  'Assets.assets_fair_lib_src_page_photo_gallery_fair_js':
      Assets.assets_fair_lib_src_page_photo_gallery_fair_js,
  'Assets.assets_fair_lib_src_page_photo_gallery_fair_json':
      Assets.assets_fair_lib_src_page_photo_gallery_fair_json,
  'Assets.assets_fair_lib_src_page_photo_gallery1_fair_js':
      Assets.assets_fair_lib_src_page_photo_gallery1_fair_js,
  'Assets.assets_fair_lib_src_page_photo_gallery1_fair_json':
      Assets.assets_fair_lib_src_page_photo_gallery1_fair_json,
  'Assets.assets_fair_lib_src_page_photo_gallery_item_fair_bin':
      Assets.assets_fair_lib_src_page_photo_gallery_item_fair_bin,
  'Assets.assets_fair_lib_src_page_photo_gallery_item_fair_js':
      Assets.assets_fair_lib_src_page_photo_gallery_item_fair_js,
  'Assets.assets_fair_lib_src_page_photo_gallery_item_fair_json':
      Assets.assets_fair_lib_src_page_photo_gallery_item_fair_json,
  'Assets.assets_fair_lib_src_page_photo_swiper_fair_bin':
      Assets.assets_fair_lib_src_page_photo_swiper_fair_bin,
  'Assets.assets_fair_lib_src_page_photo_swiper_fair_js':
      Assets.assets_fair_lib_src_page_photo_swiper_fair_js,
  'Assets.assets_fair_lib_src_page_photo_swiper_fair_json':
      Assets.assets_fair_lib_src_page_photo_swiper_fair_json,
  'Assets.assets_fair_basic_config_json': Assets.assets_fair_basic_config_json,
  'Assets.assets_image_40_png': Assets.assets_image_40_png,
  'Assets.assets_image_avatar_jpg': Assets.assets_image_avatar_jpg,
  'Assets.assets_image_fluttercandies_grey_png':
      Assets.assets_image_fluttercandies_grey_png,
  'Assets.assets_image_loading_gif': Assets.assets_image_loading_gif,
  'Assets.assets_image_love_png': Assets.assets_image_love_png,
  'Assets.assets_image_sun_glasses_png': Assets.assets_image_sun_glasses_png,
  'Assets.assets_plugin_fair_common_plugin_js':
      Assets.assets_plugin_fair_common_plugin_js,
  'SugarCommon.returnContainer': (props) => SugarCommon.returnContainer(
        props['pa'][0],
      ),
  'SugarCommon.onImageStateChanged': (props) => SugarCommon.onImageStateChanged(
        props['pa'][0],
      ),
  'SugarCommon.colorComputeLuminance': (props) =>
      SugarCommon.colorComputeLuminance(
        props['pa'][0],
      ),
  'SugarCommon.getRandomColor': (props) => SugarCommon.getRandomColor(
        props['pa'][0],
      ),
  'SugarCommon.getLuminanceColor': (props) => SugarCommon.getLuminanceColor(
        props['pa'][0]?.toDouble(),
      ),
  'SugarCommon.likeButtonTapCallback': (props) =>
      SugarCommon.likeButtonTapCallback(
        props['pa'][0],
        index: props['index'],
      ),
  'SugarCommon.voidCallBack': (props) => SugarCommon.voidCallBack(
        function: props['function'],
        value: props['value'],
      ),
  'SugarCommon.onSlidingPage': (props) => SugarCommon.onSlidingPage(
        props['pa'][0],
      ),
  'SugarCommon.loadingMoreIndicatorBuilder': (props) =>
      SugarCommon.loadingMoreIndicatorBuilder(
        props['pa'][0],
        tryAgain: props['tryAgain'],
        text: props['text'],
        backgroundColor: props['backgroundColor'],
        isSliver: props['isSliver'] ?? false,
        emptyWidget: props['emptyWidget'],
      ),
  'SugarCommon.loadingMoreItemBuilder': (props) =>
      SugarCommon.loadingMoreItemBuilder(
        props['pa'][0],
      ),
  'SugarCommon.nullOrDefault': (props) => SugarCommon.nullOrDefault(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarCommon.dateTimeConvert': (props) => SugarCommon.dateTimeConvert(
        props['pa'][0],
      ),
  'SugarStringExtension.test': (props) => SugarStringExtension.test(
        props['pa'][0],
      ),
  'SugarIterable.iterator': (props) => SugarIterable.iterator(
        props['pa'][0],
      ),
  'SugarIterable.length': (props) => SugarIterable.length(
        props['pa'][0],
      ),
  'SugarIterable.isEmpty': (props) => SugarIterable.isEmpty(
        props['pa'][0],
      ),
  'SugarIterable.isNotEmpty': (props) => SugarIterable.isNotEmpty(
        props['pa'][0],
      ),
  'SugarIterable.first': (props) => SugarIterable.first(
        props['pa'][0],
      ),
  'SugarIterable.last': (props) => SugarIterable.last(
        props['pa'][0],
      ),
  'SugarIterable.single': (props) => SugarIterable.single(
        props['pa'][0],
      ),
  'SugarIterable.castFrom': (props) => SugarIterable.castFrom(
        props['pa'][0],
      ),
  'SugarIterable.cast': (props) => SugarIterable.cast(
        props['pa'][0],
      ),
  'SugarIterable.followedBy': (props) => SugarIterable.followedBy(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.map': (props) => SugarIterable.map(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.where': (props) => SugarIterable.where(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.whereType': (props) => SugarIterable.whereType(
        props['pa'][0],
      ),
  'SugarIterable.expand': (props) => SugarIterable.expand(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.contains': (props) => SugarIterable.contains(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.forEach': (props) => SugarIterable.forEach(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.reduce': (props) => SugarIterable.reduce(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.fold': (props) => SugarIterable.fold(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarIterable.every': (props) => SugarIterable.every(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.join': (props) => SugarIterable.join(
        props['pa'][0],
        props['pa'][1] ?? "",
      ),
  'SugarIterable.any': (props) => SugarIterable.any(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.toList': (props) => SugarIterable.toList(
        props['pa'][0],
        growable: props['growable'] ?? true,
      ),
  'SugarIterable.toSet': (props) => SugarIterable.toSet(
        props['pa'][0],
      ),
  'SugarIterable.take': (props) => SugarIterable.take(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.takeWhile': (props) => SugarIterable.takeWhile(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.skip': (props) => SugarIterable.skip(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.skipWhile': (props) => SugarIterable.skipWhile(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.firstWhere': (props) => SugarIterable.firstWhere(
        props['pa'][0],
        props['pa'][1],
        orElse: props['orElse'],
      ),
  'SugarIterable.lastWhere': (props) => SugarIterable.lastWhere(
        props['pa'][0],
        props['pa'][1],
        orElse: props['orElse'],
      ),
  'SugarIterable.singleWhere': (props) => SugarIterable.singleWhere(
        props['pa'][0],
        props['pa'][1],
        orElse: props['orElse'],
      ),
  'SugarIterable.elementAt': (props) => SugarIterable.elementAt(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarIterable.iterableToString': (props) => SugarIterable.iterableToString(
        props['pa'][0],
      ),
  'SugarMap.entries': (props) => SugarMap.entries(
        props['pa'][0],
      ),
  'SugarMap.keys': (props) => SugarMap.keys(
        props['pa'][0],
      ),
  'SugarMap.values': (props) => SugarMap.values(
        props['pa'][0],
      ),
  'SugarMap.length': (props) => SugarMap.length(
        props['pa'][0],
      ),
  'SugarMap.isEmpty': (props) => SugarMap.isEmpty(
        props['pa'][0],
      ),
  'SugarMap.isNotEmpty': (props) => SugarMap.isNotEmpty(
        props['pa'][0],
      ),
  'SugarMap.containsValue': (props) => SugarMap.containsValue(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarMap.containsKey': (props) => SugarMap.containsKey(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarMap.get': (props) => SugarMap.get(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarMap.set': (props) => SugarMap.set(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarMap.addEntries': (props) => SugarMap.addEntries(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarMap.update': (props) => SugarMap.update(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
        ifAbsent: props['ifAbsent'],
      ),
  'SugarMap.updateAll': (props) => SugarMap.updateAll(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarMap.removeWhere': (props) => SugarMap.removeWhere(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarMap.putIfAbsent': (props) => SugarMap.putIfAbsent(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarMap.addAll': (props) => SugarMap.addAll(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarMap.remove': (props) => SugarMap.remove(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarMap.clear': (props) => SugarMap.clear(
        props['pa'][0],
      ),
  'SugarMap.forEach': (props) => SugarMap.forEach(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarBool.invert': (props) => SugarBool.invert(
        props['pa'][0],
      ),
  'SugarBool.and': (props) => SugarBool.and(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarBool.inclusiveOr': (props) => SugarBool.inclusiveOr(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarBool.exclusiveOr': (props) => SugarBool.exclusiveOr(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarBool.boolToString': (props) => SugarBool.boolToString(
        props['pa'][0],
      ),
  'SugarDouble.nan': (props) => SugarDouble.nan(),
  'SugarDouble.infinity': (props) => SugarDouble.infinity(),
  'SugarDouble.negativeInfinity': (props) => SugarDouble.negativeInfinity(),
  'SugarDouble.minPositive': (props) => SugarDouble.minPositive(),
  'SugarDouble.maxFinite': (props) => SugarDouble.maxFinite(),
  'SugarDouble.sign': (props) => SugarDouble.sign(
        props['pa'][0]?.toDouble(),
      ),
  'SugarDouble.remainder': (props) => SugarDouble.remainder(
        props['pa'][0]?.toDouble(),
        props['pa'][1],
      ),
  'SugarDouble.adds': (props) => SugarDouble.adds(
        props['pa'][0]?.toDouble(),
        props['pa'][1],
      ),
  'SugarDouble.subtracts': (props) => SugarDouble.subtracts(
        props['pa'][0]?.toDouble(),
        props['pa'][1],
      ),
  'SugarDouble.multiplies': (props) => SugarDouble.multiplies(
        props['pa'][0]?.toDouble(),
        props['pa'][1],
      ),
  'SugarDouble.euclideanModulo': (props) => SugarDouble.euclideanModulo(
        props['pa'][0]?.toDouble(),
        props['pa'][1],
      ),
  'SugarDouble.divides': (props) => SugarDouble.divides(
        props['pa'][0]?.toDouble(),
        props['pa'][1],
      ),
  'SugarDouble.truncatingDivision': (props) => SugarDouble.truncatingDivision(
        props['pa'][0]?.toDouble(),
        props['pa'][1],
      ),
  'SugarDouble.negation': (props) => SugarDouble.negation(
        props['pa'][0]?.toDouble(),
      ),
  'SugarDouble.abs': (props) => SugarDouble.abs(
        props['pa'][0]?.toDouble(),
      ),
  'SugarDouble.round': (props) => SugarDouble.round(
        props['pa'][0]?.toDouble(),
      ),
  'SugarDouble.floor': (props) => SugarDouble.floor(
        props['pa'][0]?.toDouble(),
      ),
  'SugarDouble.ceil': (props) => SugarDouble.ceil(
        props['pa'][0]?.toDouble(),
      ),
  'SugarDouble.truncate': (props) => SugarDouble.truncate(
        props['pa'][0]?.toDouble(),
      ),
  'SugarDouble.roundToDouble': (props) => SugarDouble.roundToDouble(
        props['pa'][0]?.toDouble(),
      ),
  'SugarDouble.floorToDouble': (props) => SugarDouble.floorToDouble(
        props['pa'][0]?.toDouble(),
      ),
  'SugarDouble.ceilToDouble': (props) => SugarDouble.ceilToDouble(
        props['pa'][0]?.toDouble(),
      ),
  'SugarDouble.truncateToDouble': (props) => SugarDouble.truncateToDouble(
        props['pa'][0]?.toDouble(),
      ),
  'SugarDouble.doubleToString': (props) => SugarDouble.doubleToString(
        props['pa'][0]?.toDouble(),
      ),
  'SugarDouble.parse': (props) => SugarDouble.parse(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarDouble.tryParse': (props) => SugarDouble.tryParse(
        props['pa'][0],
      ),
  'SugarInt.isEven': (props) => SugarInt.isEven(
        props['pa'][0],
      ),
  'SugarInt.isOdd': (props) => SugarInt.isOdd(
        props['pa'][0],
      ),
  'SugarInt.bitLength': (props) => SugarInt.bitLength(
        props['pa'][0],
      ),
  'SugarInt.sign': (props) => SugarInt.sign(
        props['pa'][0],
      ),
  'SugarInt.and': (props) => SugarInt.and(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarInt.or': (props) => SugarInt.or(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarInt.exclusiveOr': (props) => SugarInt.exclusiveOr(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarInt.negate': (props) => SugarInt.negate(
        props['pa'][0],
      ),
  'SugarInt.leftShift': (props) => SugarInt.leftShift(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarInt.rightShift': (props) => SugarInt.rightShift(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarInt.unsignedRightShift': (props) => SugarInt.unsignedRightShift(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarInt.modPow': (props) => SugarInt.modPow(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarInt.modInverse': (props) => SugarInt.modInverse(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarInt.gcd': (props) => SugarInt.gcd(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarInt.toUnsigned': (props) => SugarInt.toUnsigned(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarInt.toSigned': (props) => SugarInt.toSigned(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarInt.negation': (props) => SugarInt.negation(
        props['pa'][0],
      ),
  'SugarInt.abs': (props) => SugarInt.abs(
        props['pa'][0],
      ),
  'SugarInt.round': (props) => SugarInt.round(
        props['pa'][0],
      ),
  'SugarInt.floor': (props) => SugarInt.floor(
        props['pa'][0],
      ),
  'SugarInt.ceil': (props) => SugarInt.ceil(
        props['pa'][0],
      ),
  'SugarInt.truncate': (props) => SugarInt.truncate(
        props['pa'][0],
      ),
  'SugarInt.roundToDouble': (props) => SugarInt.roundToDouble(
        props['pa'][0],
      ),
  'SugarInt.floorToDouble': (props) => SugarInt.floorToDouble(
        props['pa'][0],
      ),
  'SugarInt.ceilToDouble': (props) => SugarInt.ceilToDouble(
        props['pa'][0],
      ),
  'SugarInt.truncateToDouble': (props) => SugarInt.truncateToDouble(
        props['pa'][0],
      ),
  'SugarInt.intToString': (props) => SugarInt.intToString(
        props['pa'][0],
      ),
  'SugarInt.toRadixString': (props) => SugarInt.toRadixString(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarInt.parse': (props) => SugarInt.parse(
        props['pa'][0],
        radix: props['radix'],
        onError: props['onError'],
      ),
  'SugarInt.tryParse': (props) => SugarInt.tryParse(
        props['pa'][0],
        radix: props['radix'],
      ),
  'SugarList.length': (props) => SugarList.length(
        props['pa'][0],
      ),
  'SugarList.reversed': (props) => SugarList.reversed(
        props['pa'][0],
      ),
  'SugarList.castFrom': (props) => SugarList.castFrom(
        props['pa'][0],
      ),
  'SugarList.copyRange': (props) => SugarList.copyRange(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
        props['pa'][3],
        props['pa'][4],
      ),
  'SugarList.writeIterable': (props) => SugarList.writeIterable(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarList.cast': (props) => SugarList.cast(
        props['pa'][0],
      ),
  'SugarList.get': (props) => SugarList.get(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarList.set': (props) => SugarList.set(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarList.add': (props) => SugarList.add(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarList.addAll': (props) => SugarList.addAll(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarList.sort': (props) => SugarList.sort(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarList.shuffle': (props) => SugarList.shuffle(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarList.indexOf': (props) => SugarList.indexOf(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2] ?? 0,
      ),
  'SugarList.indexWhere': (props) => SugarList.indexWhere(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2] ?? 0,
      ),
  'SugarList.lastIndexWhere': (props) => SugarList.lastIndexWhere(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2] ?? 0,
      ),
  'SugarList.lastIndexOf': (props) => SugarList.lastIndexOf(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2] ?? 0,
      ),
  'SugarList.clear': (props) => SugarList.clear(
        props['pa'][0],
      ),
  'SugarList.insert': (props) => SugarList.insert(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarList.insertAll': (props) => SugarList.insertAll(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarList.setAll': (props) => SugarList.setAll(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarList.remove': (props) => SugarList.remove(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarList.removeAt': (props) => SugarList.removeAt(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarList.removeLast': (props) => SugarList.removeLast(
        props['pa'][0],
      ),
  'SugarList.removeWhere': (props) => SugarList.removeWhere(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarList.retainWhere': (props) => SugarList.retainWhere(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarList.adds': (props) => SugarList.adds(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarList.sublist': (props) => SugarList.sublist(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarList.getRange': (props) => SugarList.getRange(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarList.setRange': (props) => SugarList.setRange(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
        props['pa'][3],
        props['pa'][4] ?? 0,
      ),
  'SugarList.removeRange': (props) => SugarList.removeRange(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarList.fillRange': (props) => SugarList.fillRange(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
        props['pa'][3],
      ),
  'SugarList.replaceRange': (props) => SugarList.replaceRange(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
        props['pa'][3],
      ),
  'SugarList.asMap': (props) => SugarList.asMap(
        props['pa'][0],
      ),
  'SugarList.equalTo': (props) => SugarList.equalTo(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.isNaN': (props) => SugarNum.isNaN(
        props['pa'][0],
      ),
  'SugarNum.isNegative': (props) => SugarNum.isNegative(
        props['pa'][0],
      ),
  'SugarNum.isInfinite': (props) => SugarNum.isInfinite(
        props['pa'][0],
      ),
  'SugarNum.isFinite': (props) => SugarNum.isFinite(
        props['pa'][0],
      ),
  'SugarNum.sign': (props) => SugarNum.sign(
        props['pa'][0],
      ),
  'SugarNum.equalTo': (props) => SugarNum.equalTo(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.compareTo': (props) => SugarNum.compareTo(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.adds': (props) => SugarNum.adds(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.subtracts': (props) => SugarNum.subtracts(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.multiplies': (props) => SugarNum.multiplies(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.euclideanModulo': (props) => SugarNum.euclideanModulo(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.divides': (props) => SugarNum.divides(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.truncatingDivision': (props) => SugarNum.truncatingDivision(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.negation': (props) => SugarNum.negation(
        props['pa'][0],
      ),
  'SugarNum.remainder': (props) => SugarNum.remainder(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.smallerThan': (props) => SugarNum.smallerThan(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.smallerThanOrEqualTo': (props) => SugarNum.smallerThanOrEqualTo(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.greaterThan': (props) => SugarNum.greaterThan(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.greaterThanOrEqualTo': (props) => SugarNum.greaterThanOrEqualTo(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.abs': (props) => SugarNum.abs(
        props['pa'][0],
      ),
  'SugarNum.round': (props) => SugarNum.round(
        props['pa'][0],
      ),
  'SugarNum.floor': (props) => SugarNum.floor(
        props['pa'][0],
      ),
  'SugarNum.ceil': (props) => SugarNum.ceil(
        props['pa'][0],
      ),
  'SugarNum.truncate': (props) => SugarNum.truncate(
        props['pa'][0],
      ),
  'SugarNum.roundToDouble': (props) => SugarNum.roundToDouble(
        props['pa'][0],
      ),
  'SugarNum.floorToDouble': (props) => SugarNum.floorToDouble(
        props['pa'][0],
      ),
  'SugarNum.ceilToDouble': (props) => SugarNum.ceilToDouble(
        props['pa'][0],
      ),
  'SugarNum.truncateToDouble': (props) => SugarNum.truncateToDouble(
        props['pa'][0],
      ),
  'SugarNum.clamp': (props) => SugarNum.clamp(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarNum.toInt': (props) => SugarNum.toInt(
        props['pa'][0],
      ),
  'SugarNum.toDouble': (props) => SugarNum.toDouble(
        props['pa'][0],
      ),
  'SugarNum.toStringAsFixed': (props) => SugarNum.toStringAsFixed(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.toStringAsExponential': (props) => SugarNum.toStringAsExponential(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.toStringAsPrecision': (props) => SugarNum.toStringAsPrecision(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.numToString': (props) => SugarNum.numToString(
        props['pa'][0],
      ),
  'SugarNum.parse': (props) => SugarNum.parse(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarNum.tryParse': (props) => SugarNum.tryParse(
        props['pa'][0],
      ),
  'SugarString.length': (props) => SugarString.length(
        props['pa'][0],
      ),
  'SugarString.isEmpty': (props) => SugarString.isEmpty(
        props['pa'][0],
      ),
  'SugarString.isNotEmpty': (props) => SugarString.isNotEmpty(
        props['pa'][0],
      ),
  'SugarString.codeUnits': (props) => SugarString.codeUnits(
        props['pa'][0],
      ),
  'SugarString.runes': (props) => SugarString.runes(
        props['pa'][0],
      ),
  'SugarString.getChar': (props) => SugarString.getChar(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarString.codeUnitAt': (props) => SugarString.codeUnitAt(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarString.equalTo': (props) => SugarString.equalTo(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarString.compareTo': (props) => SugarString.compareTo(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarString.endsWith': (props) => SugarString.endsWith(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarString.startsWith': (props) => SugarString.startsWith(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2] ?? 0,
      ),
  'SugarString.indexOf': (props) => SugarString.indexOf(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2] ?? 0,
      ),
  'SugarString.lastIndexOf': (props) => SugarString.lastIndexOf(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2] ?? 0,
      ),
  'SugarString.concatenates': (props) => SugarString.concatenates(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarString.substring': (props) => SugarString.substring(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarString.trim': (props) => SugarString.trim(
        props['pa'][0],
      ),
  'SugarString.trimLeft': (props) => SugarString.trimLeft(
        props['pa'][0],
      ),
  'SugarString.trimRight': (props) => SugarString.trimRight(
        props['pa'][0],
      ),
  'SugarString.multipliedConcatenates': (props) =>
      SugarString.multipliedConcatenates(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarString.padLeft': (props) => SugarString.padLeft(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2] ?? ' ',
      ),
  'SugarString.padRight': (props) => SugarString.padRight(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2] ?? ' ',
      ),
  'SugarString.contains': (props) => SugarString.contains(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2] ?? 0,
      ),
  'SugarString.replaceFirst': (props) => SugarString.replaceFirst(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
        props['pa'][3] ?? 0,
      ),
  'SugarString.replaceFirstMapped': (props) => SugarString.replaceFirstMapped(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
        props['pa'][3] ?? 0,
      ),
  'SugarString.replaceAll': (props) => SugarString.replaceAll(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarString.replaceAllMapped': (props) => SugarString.replaceAllMapped(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
      ),
  'SugarString.replaceRange': (props) => SugarString.replaceRange(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
        props['pa'][3],
      ),
  'SugarString.split': (props) => SugarString.split(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarString.splitMapJoin': (props) => SugarString.splitMapJoin(
        props['pa'][0],
        props['pa'][1],
        onMatch: props['onMatch'],
        onNonMatch: props['onNonMatch'],
      ),
  'SugarString.toLowerCase': (props) => SugarString.toLowerCase(
        props['pa'][0],
      ),
  'SugarString.toUpperCase': (props) => SugarString.toUpperCase(
        props['pa'][0],
      ),
  'LoadingMoreRepository': (props) => LoadingMoreRepository(),
  'LoadingMoreRepository.onLoadData': (props) =>
      LoadingMoreRepository.onLoadData(
        props['pa'][0],
        props['pa'][1],
        notifyStateChanged: props['notifyStateChanged'],
        maxLength: props['maxLength'],
      ),
  'ImageGrid': (props) => ImageGrid(
        key: props['key'],
        images: as<Widget>(props['images']) ?? const [],
        crossAxisCount: props['crossAxisCount'],
        mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
        crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
        padding: props['padding'],
        totalCount: props['totalCount'],
      ),
  'ImageGrid1': (props) => ImageGrid1(
        key: props['key'],
        images: as<dynamic>(props['images']) ?? const [],
        mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
        crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
        padding: props['padding'],
        onImageTap: props['onImageTap'],
      ),
  'HeroWidget': (props) => HeroWidget(
        key: props['key'],
        child: props['child'],
        tag: props['tag'],
        slidePagekey: props['slidePagekey'],
        slideType: props['slideType'] ?? SlideType.onlyImage,
      ),
  'ShareDataWidget': (props) => ShareDataWidget(
        key: props['key'],
        child: props['child'],
        data: props['data'],
        index: props['index'],
      ),
  'ShareDataWidget.of': (props) => ShareDataWidget.of(
        props['pa'][0],
      ),
  'ShareDataWidget.getIndex': (props) => ShareDataWidget.getIndex(
        props['pa'][0],
      ),
  'ShareDataWidget.getValue': (props) => ShareDataWidget.getValue(
        props['pa'][0],
        props['pa'][1],
        defaultValue: props['defaultValue'],
      ),
  'ExtendedFairWidget': (props) => ExtendedFairWidget(
        key: props['key'],
        builder: props['builder'],
        name: props['name'],
        fairProps: props['fairProps'],
        delegate: props['delegate'],
        holder: props['holder'],
        wantKeepAlive: props['wantKeepAlive'],
        index: props['index'],
      ),
  'ExtendedFairWidget.tag': ExtendedFairWidget.tag,
  'ExtendedFairWidget.fairEnable': (props) => ExtendedFairWidget.fairEnable(
        props['pa'][0],
      ),
  'ExtendedFrameSeparateWidget': (props) => ExtendedFrameSeparateWidget(
        key: props['key'],
        index: props['index'],
        placeHolder: props['placeHolder'],
        builder: props['builder'],
      ),
  'PullToRefreshHeader': (props) => PullToRefreshHeader(
        props['pa'][0],
        props['pa'][1],
        key: props['key'],
        color: props['color'],
      ),
  'RefreshImage': (props) => RefreshImage(
        props['pa'][0]?.toDouble(),
        key: props['key'],
      ),
  'ItemSizeInfoNotifier': (props) => ItemSizeInfoNotifier(
        key: props['key'],
        index: props['index'],
        child: props['child'],
      ),
  'InitialRenderSizeChangedWithCallback': (props) =>
      InitialRenderSizeChangedWithCallback(
        child: props['child'],
        onLayoutChangedCallback: props['onLayoutChangedCallback'],
      ),
  'LayoutInfoNotification': (props) => LayoutInfoNotification(
        props['pa'][0],
        props['pa'][1],
      ),
  'SizeCacheWidget': (props) => SizeCacheWidget(
        key: props['key'],
        child: props['child'],
        estimateCount: props['estimateCount'] ?? 0,
      ),
  'SizeCacheWidget.of': (props) => SizeCacheWidget.of(
        props['pa'][0],
      ),
  'TaskEntry': (props) => TaskEntry(
        props['pa'][0],
        props['pa'][1],
        props['pa'][2],
        props['pa'][3],
        props['pa'][4],
        id: props['id'],
      ),
  'FrameSeparateWidget': (props) => FrameSeparateWidget(
        key: props['key'],
        index: props['index'],
        placeHolder: props['placeHolder'],
        child: props['child'],
      ),
  'ToastPosition': (props) => ToastPosition(
        align: props['align'] ?? Alignment.center,
        offset: props['offset']?.toDouble() ?? 0.0,
      ),
  'ToastPosition.center': ToastPosition.center,
  'ToastPosition.bottom': ToastPosition.bottom,
  'ToastPosition.top': ToastPosition.top,
  'OffsetAnimationBuilder': (props) => OffsetAnimationBuilder(
        maxOffsetX: props['maxOffsetX']?.toDouble() ?? 0,
        maxOffsetY: props['maxOffsetY']?.toDouble() ?? 100,
      ),
  'OpacityAnimationBuilder': (props) => const OpacityAnimationBuilder(),
  'LikeButton': (props) => LikeButton(
        key: props['key'],
        size: props['size']?.toDouble() ?? 30.0,
        likeBuilder: props['likeBuilder'],
        countBuilder: props['countBuilder'],
        bubblesSize: props['bubblesSize']?.toDouble(),
        circleSize: props['circleSize']?.toDouble(),
        likeCount: props['likeCount'],
        isLiked: props['isLiked'] ?? false,
        mainAxisAlignment:
            props['mainAxisAlignment'] ?? MainAxisAlignment.center,
        crossAxisAlignment:
            props['crossAxisAlignment'] ?? CrossAxisAlignment.center,
        animationDuration:
            props['animationDuration'] ?? const Duration(milliseconds: 1000),
        likeCountAnimationType:
            props['likeCountAnimationType'] ?? LikeCountAnimationType.part,
        likeCountAnimationDuration: props['likeCountAnimationDuration'] ??
            const Duration(milliseconds: 500),
        likeCountPadding:
            props['likeCountPadding'] ?? const EdgeInsets.only(left: 3.0),
        bubblesColor: props['bubblesColor'] ??
            const BubblesColor(
                dotPrimaryColor: Color(0xFFFFC107),
                dotSecondaryColor: Color(0xFFFF9800),
                dotThirdColor: Color(0xFFFF5722),
                dotLastColor: Color(0xFFF44336)),
        circleColor: props['circleColor'] ??
            const CircleColor(start: Color(0xFFFF5722), end: Color(0xFFFFC107)),
        onTap: props['onTap'],
        countPostion: props['countPostion'] ?? CountPostion.right,
        padding: props['padding'],
        countDecoration: props['countDecoration'],
        postFrameCallback: props['postFrameCallback'],
      ),
  'BubblesColor': (props) => BubblesColor(
        dotPrimaryColor: props['dotPrimaryColor'],
        dotSecondaryColor: props['dotSecondaryColor'],
        dotThirdColor: props['dotThirdColor'],
        dotLastColor: props['dotLastColor'],
      ),
  'CircleColor': (props) => CircleColor(
        start: props['start'],
        end: props['end'],
      ),
  'OvershootCurve': (props) => OvershootCurve(
        props['pa'][0]?.toDouble() ?? 2.5,
      ),
  'LikeCountClip': (props) => LikeCountClip(),
  'LikeCountAnimationType.none': LikeCountAnimationType.none,
  'LikeCountAnimationType.part': LikeCountAnimationType.part,
  'LikeCountAnimationType.all': LikeCountAnimationType.all,
  'LikeCountAnimationType.values': LikeCountAnimationType.values,
  'CountPostion.left': CountPostion.left,
  'CountPostion.right': CountPostion.right,
  'CountPostion.top': CountPostion.top,
  'CountPostion.bottom': CountPostion.bottom,
  'CountPostion.values': CountPostion.values,
  'LoadState.loading': LoadState.loading,
  'LoadState.completed': LoadState.completed,
  'LoadState.failed': LoadState.failed,
  'LoadState.values': LoadState.values,
  'ExtendedImageMode.none': ExtendedImageMode.none,
  'ExtendedImageMode.gesture': ExtendedImageMode.gesture,
  'ExtendedImageMode.editor': ExtendedImageMode.editor,
  'ExtendedImageMode.values': ExtendedImageMode.values,
  'Boundary': (props) => Boundary(
        left: props['left'] ?? false,
        right: props['right'] ?? false,
        top: props['top'] ?? false,
        bottom: props['bottom'] ?? false,
      ),
  'GestureDetails': (props) => GestureDetails(
        offset: props['offset'],
        totalScale: props['totalScale']?.toDouble(),
        gestureDetails: props['gestureDetails'],
        actionType: props['actionType'] ?? ActionType.pan,
        userOffset: props['userOffset'] ?? true,
      ),
  'GestureConfig': (props) => GestureConfig(
        minScale: props['minScale']?.toDouble() ?? 0.8,
        maxScale: props['maxScale']?.toDouble() ?? 5.0,
        speed: props['speed']?.toDouble() ?? 1.0,
        cacheGesture: props['cacheGesture'] ?? false,
        inertialSpeed: props['inertialSpeed']?.toDouble() ?? 100.0,
        initialScale: props['initialScale']?.toDouble() ?? 1.0,
        inPageView: props['inPageView'] ?? false,
        animationMinScale: props['animationMinScale']?.toDouble(),
        animationMaxScale: props['animationMaxScale']?.toDouble(),
        initialAlignment: props['initialAlignment'] ?? InitialAlignment.center,
        gestureDetailsIsChanged: props['gestureDetailsIsChanged'],
        hitTestBehavior:
            props['hitTestBehavior'] ?? HitTestBehavior.deferToChild,
        reverseMousePointerScrollDirection:
            props['reverseMousePointerScrollDirection'] ?? false,
      ),
  'GestureAnimation': (props) => GestureAnimation(
        props['pa'][0],
        offsetCallBack: props['offsetCallBack'],
        scaleCallBack: props['scaleCallBack'],
      ),
  'InitialAlignment.topLeft': InitialAlignment.topLeft,
  'InitialAlignment.topCenter': InitialAlignment.topCenter,
  'InitialAlignment.topRight': InitialAlignment.topRight,
  'InitialAlignment.centerLeft': InitialAlignment.centerLeft,
  'InitialAlignment.center': InitialAlignment.center,
  'InitialAlignment.centerRight': InitialAlignment.centerRight,
  'InitialAlignment.bottomLeft': InitialAlignment.bottomLeft,
  'InitialAlignment.bottomCenter': InitialAlignment.bottomCenter,
  'InitialAlignment.bottomRight': InitialAlignment.bottomRight,
  'InitialAlignment.values': InitialAlignment.values,
  'ActionType.zoom': ActionType.zoom,
  'ActionType.pan': ActionType.pan,
  'ActionType.edit': ActionType.edit,
  'ActionType.values': ActionType.values,
  'ExtendedImageEditor': (props) => ExtendedImageEditor(
        extendedImageState: props['extendedImageState'],
        key: props['key'],
      ),
  'ExtendedImageBorderPainter': (props) => ExtendedImageBorderPainter(
        border: props['border'],
        shape: props['shape'] ?? BoxShape.rectangle,
        borderRadius: props['borderRadius'],
      ),
  'ExtendedImage': (props) => ExtendedImage(
        key: props['key'],
        image: props['image'],
        semanticLabel: props['semanticLabel'],
        excludeFromSemantics: props['excludeFromSemantics'] ?? false,
        width: props['width']?.toDouble(),
        height: props['height']?.toDouble(),
        color: props['color'],
        opacity: props['opacity'],
        colorBlendMode: props['colorBlendMode'],
        fit: props['fit'],
        alignment: props['alignment'] ?? Alignment.center,
        repeat: props['repeat'] ?? ImageRepeat.noRepeat,
        centerSlice: props['centerSlice'],
        matchTextDirection: props['matchTextDirection'] ?? false,
        gaplessPlayback: props['gaplessPlayback'] ?? false,
        filterQuality: props['filterQuality'] ?? FilterQuality.low,
        loadStateChanged: props['loadStateChanged'],
        border: props['border'],
        shape: props['shape'],
        borderRadius: props['borderRadius'],
        clipBehavior: props['clipBehavior'] ?? Clip.antiAlias,
        enableLoadState: props['enableLoadState'] ?? false,
        beforePaintImage: props['beforePaintImage'],
        afterPaintImage: props['afterPaintImage'],
        mode: props['mode'] ?? ExtendedImageMode.none,
        enableMemoryCache: props['enableMemoryCache'] ?? true,
        clearMemoryCacheIfFailed: props['clearMemoryCacheIfFailed'] ?? true,
        onDoubleTap: props['onDoubleTap'],
        initGestureConfigHandler: props['initGestureConfigHandler'],
        enableSlideOutPage: props['enableSlideOutPage'] ?? false,
        constraints: props['constraints'],
        extendedImageEditorKey: props['extendedImageEditorKey'],
        initEditorConfigHandler: props['initEditorConfigHandler'],
        heroBuilderForSlidingPage: props['heroBuilderForSlidingPage'],
        clearMemoryCacheWhenDispose:
            props['clearMemoryCacheWhenDispose'] ?? false,
        extendedImageGestureKey: props['extendedImageGestureKey'],
        isAntiAlias: props['isAntiAlias'] ?? false,
        handleLoadingProgress: props['handleLoadingProgress'] ?? false,
        layoutInsets: props['layoutInsets'] ?? EdgeInsets.zero,
      ),
  'ExtendedImage.asset': (props) => ExtendedImage.asset(
        props['pa'][0],
        key: props['key'],
        bundle: props['bundle'],
        semanticLabel: props['semanticLabel'],
        excludeFromSemantics: props['excludeFromSemantics'] ?? false,
        scale: props['scale']?.toDouble(),
        width: props['width']?.toDouble(),
        height: props['height']?.toDouble(),
        color: props['color'],
        opacity: props['opacity'],
        colorBlendMode: props['colorBlendMode'],
        fit: props['fit'],
        alignment: props['alignment'] ?? Alignment.center,
        repeat: props['repeat'] ?? ImageRepeat.noRepeat,
        centerSlice: props['centerSlice'],
        matchTextDirection: props['matchTextDirection'] ?? false,
        gaplessPlayback: props['gaplessPlayback'] ?? false,
        package: props['package'],
        filterQuality: props['filterQuality'] ?? FilterQuality.low,
        loadStateChanged: props['loadStateChanged'],
        shape: props['shape'],
        border: props['border'],
        borderRadius: props['borderRadius'],
        clipBehavior: props['clipBehavior'] ?? Clip.antiAlias,
        enableLoadState: props['enableLoadState'] ?? false,
        beforePaintImage: props['beforePaintImage'],
        afterPaintImage: props['afterPaintImage'],
        mode: props['mode'] ?? ExtendedImageMode.none,
        enableMemoryCache: props['enableMemoryCache'] ?? true,
        clearMemoryCacheIfFailed: props['clearMemoryCacheIfFailed'] ?? true,
        onDoubleTap: props['onDoubleTap'],
        initGestureConfigHandler: props['initGestureConfigHandler'],
        enableSlideOutPage: props['enableSlideOutPage'] ?? false,
        constraints: props['constraints'],
        extendedImageEditorKey: props['extendedImageEditorKey'],
        initEditorConfigHandler: props['initEditorConfigHandler'],
        heroBuilderForSlidingPage: props['heroBuilderForSlidingPage'],
        clearMemoryCacheWhenDispose:
            props['clearMemoryCacheWhenDispose'] ?? false,
        extendedImageGestureKey: props['extendedImageGestureKey'],
        cacheWidth: props['cacheWidth'],
        cacheHeight: props['cacheHeight'],
        isAntiAlias: props['isAntiAlias'] ?? false,
        compressionRatio: props['compressionRatio']?.toDouble(),
        maxBytes: props['maxBytes'],
        cacheRawData: props['cacheRawData'] ?? false,
        imageCacheName: props['imageCacheName'],
        layoutInsets: props['layoutInsets'] ?? EdgeInsets.zero,
      ),
  'ExtendedImage.file': (props) => ExtendedImage.file(
        props['pa'][0],
        key: props['key'],
        scale: props['scale']?.toDouble() ?? 1.0,
        semanticLabel: props['semanticLabel'],
        excludeFromSemantics: props['excludeFromSemantics'] ?? false,
        width: props['width']?.toDouble(),
        height: props['height']?.toDouble(),
        color: props['color'],
        opacity: props['opacity'],
        colorBlendMode: props['colorBlendMode'],
        fit: props['fit'],
        alignment: props['alignment'] ?? Alignment.center,
        repeat: props['repeat'] ?? ImageRepeat.noRepeat,
        centerSlice: props['centerSlice'],
        matchTextDirection: props['matchTextDirection'] ?? false,
        gaplessPlayback: props['gaplessPlayback'] ?? false,
        filterQuality: props['filterQuality'] ?? FilterQuality.low,
        loadStateChanged: props['loadStateChanged'],
        shape: props['shape'],
        border: props['border'],
        borderRadius: props['borderRadius'],
        clipBehavior: props['clipBehavior'] ?? Clip.antiAlias,
        enableLoadState: props['enableLoadState'] ?? false,
        beforePaintImage: props['beforePaintImage'],
        afterPaintImage: props['afterPaintImage'],
        mode: props['mode'] ?? ExtendedImageMode.none,
        enableMemoryCache: props['enableMemoryCache'] ?? true,
        clearMemoryCacheIfFailed: props['clearMemoryCacheIfFailed'] ?? true,
        onDoubleTap: props['onDoubleTap'],
        initGestureConfigHandler: props['initGestureConfigHandler'],
        enableSlideOutPage: props['enableSlideOutPage'] ?? false,
        constraints: props['constraints'],
        extendedImageEditorKey: props['extendedImageEditorKey'],
        initEditorConfigHandler: props['initEditorConfigHandler'],
        heroBuilderForSlidingPage: props['heroBuilderForSlidingPage'],
        clearMemoryCacheWhenDispose:
            props['clearMemoryCacheWhenDispose'] ?? false,
        extendedImageGestureKey: props['extendedImageGestureKey'],
        cacheWidth: props['cacheWidth'],
        cacheHeight: props['cacheHeight'],
        isAntiAlias: props['isAntiAlias'] ?? false,
        compressionRatio: props['compressionRatio']?.toDouble(),
        maxBytes: props['maxBytes'],
        cacheRawData: props['cacheRawData'] ?? false,
        imageCacheName: props['imageCacheName'],
        layoutInsets: props['layoutInsets'] ?? EdgeInsets.zero,
      ),
  'ExtendedImage.memory': (props) => ExtendedImage.memory(
        props['pa'][0],
        key: props['key'],
        scale: props['scale']?.toDouble() ?? 1.0,
        semanticLabel: props['semanticLabel'],
        excludeFromSemantics: props['excludeFromSemantics'] ?? false,
        width: props['width']?.toDouble(),
        height: props['height']?.toDouble(),
        color: props['color'],
        opacity: props['opacity'],
        colorBlendMode: props['colorBlendMode'],
        fit: props['fit'],
        alignment: props['alignment'] ?? Alignment.center,
        repeat: props['repeat'] ?? ImageRepeat.noRepeat,
        centerSlice: props['centerSlice'],
        matchTextDirection: props['matchTextDirection'] ?? false,
        gaplessPlayback: props['gaplessPlayback'] ?? false,
        filterQuality: props['filterQuality'] ?? FilterQuality.low,
        loadStateChanged: props['loadStateChanged'],
        shape: props['shape'],
        border: props['border'],
        borderRadius: props['borderRadius'],
        clipBehavior: props['clipBehavior'] ?? Clip.antiAlias,
        enableLoadState: props['enableLoadState'] ?? false,
        beforePaintImage: props['beforePaintImage'],
        afterPaintImage: props['afterPaintImage'],
        mode: props['mode'] ?? ExtendedImageMode.none,
        enableMemoryCache: props['enableMemoryCache'] ?? true,
        clearMemoryCacheIfFailed: props['clearMemoryCacheIfFailed'] ?? true,
        onDoubleTap: props['onDoubleTap'],
        initGestureConfigHandler: props['initGestureConfigHandler'],
        enableSlideOutPage: props['enableSlideOutPage'] ?? false,
        constraints: props['constraints'],
        extendedImageEditorKey: props['extendedImageEditorKey'],
        initEditorConfigHandler: props['initEditorConfigHandler'],
        heroBuilderForSlidingPage: props['heroBuilderForSlidingPage'],
        clearMemoryCacheWhenDispose:
            props['clearMemoryCacheWhenDispose'] ?? false,
        extendedImageGestureKey: props['extendedImageGestureKey'],
        cacheWidth: props['cacheWidth'],
        cacheHeight: props['cacheHeight'],
        isAntiAlias: props['isAntiAlias'] ?? false,
        compressionRatio: props['compressionRatio']?.toDouble(),
        maxBytes: props['maxBytes'],
        cacheRawData: props['cacheRawData'] ?? false,
        imageCacheName: props['imageCacheName'],
        layoutInsets: props['layoutInsets'] ?? EdgeInsets.zero,
      ),
  'ExtendedImage.network': (props) => ExtendedImage.network(
        props['pa'][0],
        key: props['key'],
        semanticLabel: props['semanticLabel'],
        excludeFromSemantics: props['excludeFromSemantics'] ?? false,
        width: props['width']?.toDouble(),
        height: props['height']?.toDouble(),
        color: props['color'],
        opacity: props['opacity'],
        colorBlendMode: props['colorBlendMode'],
        fit: props['fit'],
        alignment: props['alignment'] ?? Alignment.center,
        repeat: props['repeat'] ?? ImageRepeat.noRepeat,
        centerSlice: props['centerSlice'],
        matchTextDirection: props['matchTextDirection'] ?? false,
        gaplessPlayback: props['gaplessPlayback'] ?? false,
        filterQuality: props['filterQuality'] ?? FilterQuality.low,
        loadStateChanged: props['loadStateChanged'],
        shape: props['shape'],
        border: props['border'],
        borderRadius: props['borderRadius'],
        clipBehavior: props['clipBehavior'] ?? Clip.antiAlias,
        enableLoadState: props['enableLoadState'] ?? true,
        beforePaintImage: props['beforePaintImage'],
        afterPaintImage: props['afterPaintImage'],
        mode: props['mode'] ?? ExtendedImageMode.none,
        enableMemoryCache: props['enableMemoryCache'] ?? true,
        clearMemoryCacheIfFailed: props['clearMemoryCacheIfFailed'] ?? true,
        onDoubleTap: props['onDoubleTap'],
        initGestureConfigHandler: props['initGestureConfigHandler'],
        enableSlideOutPage: props['enableSlideOutPage'] ?? false,
        constraints: props['constraints'],
        cancelToken: props['cancelToken'],
        retries: props['retries'] ?? 3,
        timeLimit: props['timeLimit'],
        headers: props['headers'],
        cache: props['cache'] ?? true,
        scale: props['scale']?.toDouble() ?? 1.0,
        timeRetry: props['timeRetry'] ?? const Duration(milliseconds: 100),
        extendedImageEditorKey: props['extendedImageEditorKey'],
        initEditorConfigHandler: props['initEditorConfigHandler'],
        heroBuilderForSlidingPage: props['heroBuilderForSlidingPage'],
        clearMemoryCacheWhenDispose:
            props['clearMemoryCacheWhenDispose'] ?? false,
        handleLoadingProgress: props['handleLoadingProgress'] ?? false,
        extendedImageGestureKey: props['extendedImageGestureKey'],
        cacheWidth: props['cacheWidth'],
        cacheHeight: props['cacheHeight'],
        isAntiAlias: props['isAntiAlias'] ?? false,
        cacheKey: props['cacheKey'],
        printError: props['printError'] ?? true,
        compressionRatio: props['compressionRatio']?.toDouble(),
        maxBytes: props['maxBytes'],
        cacheRawData: props['cacheRawData'] ?? false,
        imageCacheName: props['imageCacheName'],
        cacheMaxAge: props['cacheMaxAge'],
        layoutInsets: props['layoutInsets'] ?? EdgeInsets.zero,
      ),
  'ExtendedRawImage': (props) => ExtendedRawImage(
        key: props['key'],
        image: props['image'],
        width: props['width']?.toDouble(),
        height: props['height']?.toDouble(),
        scale: props['scale']?.toDouble() ?? 1.0,
        color: props['color'],
        opacity: props['opacity'],
        colorBlendMode: props['colorBlendMode'],
        fit: props['fit'],
        alignment: props['alignment'] ?? Alignment.center,
        repeat: props['repeat'] ?? ImageRepeat.noRepeat,
        centerSlice: props['centerSlice'],
        matchTextDirection: props['matchTextDirection'] ?? false,
        invertColors: props['invertColors'] ?? false,
        filterQuality: props['filterQuality'] ?? FilterQuality.low,
        sourceRect: props['sourceRect'],
        beforePaintImage: props['beforePaintImage'],
        afterPaintImage: props['afterPaintImage'],
        gestureDetails: props['gestureDetails'],
        editActionDetails: props['editActionDetails'],
        isAntiAlias: props['isAntiAlias'] ?? false,
        debugImageLabel: props['debugImageLabel'],
        layoutInsets: props['layoutInsets'] ?? EdgeInsets.zero,
      ),
  'ExtendedImageGesture': (props) => ExtendedImageGesture(
        props['pa'][0],
        imageBuilder: props['imageBuilder'],
        canScaleImage: props['canScaleImage'],
        key: props['key'],
      ),
  'ExtendedImageSlidePage': (props) => ExtendedImageSlidePage(
        child: props['child'],
        slidePageBackgroundHandler: props['slidePageBackgroundHandler'],
        slideScaleHandler: props['slideScaleHandler'],
        slideOffsetHandler: props['slideOffsetHandler'],
        slideEndHandler: props['slideEndHandler'],
        slideAxis: props['slideAxis'] ?? SlideAxis.both,
        resetPageDuration:
            props['resetPageDuration'] ?? const Duration(milliseconds: 500),
        slideType: props['slideType'] ?? SlideType.onlyImage,
        onSlidingPage: props['onSlidingPage'],
        key: props['key'],
      ),
  'SlideAxis.both': SlideAxis.both,
  'SlideAxis.horizontal': SlideAxis.horizontal,
  'SlideAxis.vertical': SlideAxis.vertical,
  'SlideAxis.values': SlideAxis.values,
  'SlideType.wholePage': SlideType.wholePage,
  'SlideType.onlyImage': SlideType.onlyImage,
  'SlideType.values': SlideType.values,
  'ExtendedRenderImage': (props) => ExtendedRenderImage(
        image: props['image'],
        debugImageLabel: props['debugImageLabel'],
        width: props['width']?.toDouble(),
        height: props['height']?.toDouble(),
        scale: props['scale']?.toDouble() ?? 1.0,
        color: props['color'],
        opacity: props['opacity'],
        colorBlendMode: props['colorBlendMode'],
        fit: props['fit'],
        alignment: props['alignment'] ?? Alignment.center,
        repeat: props['repeat'] ?? ImageRepeat.noRepeat,
        centerSlice: props['centerSlice'],
        matchTextDirection: props['matchTextDirection'] ?? false,
        textDirection: props['textDirection'],
        invertColors: props['invertColors'] ?? false,
        isAntiAlias: props['isAntiAlias'] ?? false,
        filterQuality: props['filterQuality'] ?? FilterQuality.low,
        sourceRect: props['sourceRect'],
        afterPaintImage: props['afterPaintImage'],
        beforePaintImage: props['beforePaintImage'],
        gestureDetails: props['gestureDetails'],
        editActionDetails: props['editActionDetails'],
        layoutInsets: props['layoutInsets'] ?? EdgeInsets.zero,
      ),
  'EditActionDetails': (props) => EditActionDetails(),
  'EditorConfig': (props) => EditorConfig(
        maxScale: props['maxScale']?.toDouble() ?? 5.0,
        cropRectPadding: props['cropRectPadding'] ?? const EdgeInsets.all(20.0),
        cornerSize: props['cornerSize'] ?? const Size(30.0, 5.0),
        cornerColor: props['cornerColor'],
        lineColor: props['lineColor'],
        lineHeight: props['lineHeight']?.toDouble() ?? 0.6,
        editorMaskColorHandler: props['editorMaskColorHandler'],
        hitTestSize: props['hitTestSize']?.toDouble() ?? 20.0,
        animationDuration:
            props['animationDuration'] ?? const Duration(milliseconds: 200),
        tickerDuration:
            props['tickerDuration'] ?? const Duration(milliseconds: 400),
        cropAspectRatio:
            props['cropAspectRatio']?.toDouble() ?? CropAspectRatios.custom,
        initialCropAspectRatio: props['initialCropAspectRatio']?.toDouble() ??
            CropAspectRatios.custom,
        initCropRectType:
            props['initCropRectType'] ?? InitCropRectType.imageRect,
        cropLayerPainter:
            props['cropLayerPainter'] ?? const EditorCropLayerPainter(),
        speed: props['speed']?.toDouble() ?? 1.0,
        hitTestBehavior:
            props['hitTestBehavior'] ?? HitTestBehavior.deferToChild,
        editActionDetailsIsChanged: props['editActionDetailsIsChanged'],
        reverseMousePointerScrollDirection:
            props['reverseMousePointerScrollDirection'] ?? false,
      ),
  'CropAspectRatios': (props) => CropAspectRatios(),
  'CropAspectRatios.custom': CropAspectRatios.custom,
  'CropAspectRatios.original': CropAspectRatios.original,
  'CropAspectRatios.ratio1_1': CropAspectRatios.ratio1_1,
  'CropAspectRatios.ratio3_4': CropAspectRatios.ratio3_4,
  'CropAspectRatios.ratio4_3': CropAspectRatios.ratio4_3,
  'CropAspectRatios.ratio9_16': CropAspectRatios.ratio9_16,
  'CropAspectRatios.ratio16_9': CropAspectRatios.ratio16_9,
  'EditorCropLayerPainter': (props) => const EditorCropLayerPainter(),
  'ExtendedImageCropLayerPainter': (props) => ExtendedImageCropLayerPainter(
        cropRect: props['cropRect'],
        cropLayerPainter: props['cropLayerPainter'],
        lineColor: props['lineColor'],
        cornerColor: props['cornerColor'],
        cornerSize: props['cornerSize'],
        lineHeight: props['lineHeight']?.toDouble() ?? 0,
        maskColor: props['maskColor'],
        pointerDown: props['pointerDown'],
      ),
  'InitCropRectType.imageRect': InitCropRectType.imageRect,
  'InitCropRectType.layoutRect': InitCropRectType.layoutRect,
  'InitCropRectType.values': InitCropRectType.values,
  'ExtendedImageSlidePageHandler': (props) => ExtendedImageSlidePageHandler(
        child: props['child'],
        extendedImageSlidePageState: props['extendedImageSlidePageState'],
        heroBuilderForSlidingPage: props['heroBuilderForSlidingPage'],
      ),
  'ExtendedImageGesturePageView': (props) => ExtendedImageGesturePageView(
        key: props['key'],
        scrollDirection: props['scrollDirection'] ?? Axis.horizontal,
        reverse: props['reverse'] ?? false,
        controller: props['controller'],
        physics: props['physics'],
        pageSnapping: props['pageSnapping'] ?? true,
        onPageChanged: props['onPageChanged'],
        children: as<Widget>(props['children']) ?? const <Widget>[],
        canScrollPage: props['canScrollPage'],
        preloadPagesCount: props['preloadPagesCount'] ?? 0,
      ),
  'ExtendedImageGesturePageView.builder': (props) =>
      ExtendedImageGesturePageView.builder(
        key: props['key'],
        scrollDirection: props['scrollDirection'] ?? Axis.horizontal,
        reverse: props['reverse'] ?? false,
        controller: props['controller'],
        physics: props['physics'],
        pageSnapping: props['pageSnapping'] ?? true,
        onPageChanged: props['onPageChanged'],
        itemBuilder: props['itemBuilder'],
        itemCount: props['itemCount'],
        canScrollPage: props['canScrollPage'],
        preloadPagesCount: props['preloadPagesCount'] ?? 0,
      ),
  'ExtendedImageGesturePageView.custom': (props) =>
      ExtendedImageGesturePageView.custom(
        key: props['key'],
        scrollDirection: props['scrollDirection'] ?? Axis.horizontal,
        reverse: props['reverse'] ?? false,
        controller: props['controller'],
        pageSnapping: props['pageSnapping'] ?? true,
        onPageChanged: props['onPageChanged'],
        canScrollPage: props['canScrollPage'],
        childrenDelegate: props['childrenDelegate'],
        preloadPagesCount: props['preloadPagesCount'] ?? 0,
      ),
  'ExtendedSliverFillViewport': (props) => ExtendedSliverFillViewport(
        key: props['key'],
        delegate: props['delegate'],
        viewportFraction: props['viewportFraction']?.toDouble() ?? 1.0,
        padEnds: props['padEnds'] ?? true,
        pageSpacing: props['pageSpacing']?.toDouble() ?? 0.0,
      ),
  'ExtendedRenderSliverFillViewport': (props) =>
      ExtendedRenderSliverFillViewport(
        childManager: props['childManager'],
        viewportFraction: props['viewportFraction']?.toDouble() ?? 1.0,
        pageSpacing: props['pageSpacing']?.toDouble() ?? 0.0,
      ),
  'ExtendedPageController': (props) => ExtendedPageController(
        initialPage: props['initialPage'] ?? 0,
        keepPage: props['keepPage'] ?? true,
        viewportFraction: props['viewportFraction']?.toDouble() ?? 1.0,
        pageSpacing: props['pageSpacing']?.toDouble() ?? 0.0,
        shouldIgnorePointerWhenScrolling:
            props['shouldIgnorePointerWhenScrolling'] ?? false,
      ),
  'SliverPinnedPersistentHeader': (props) => SliverPinnedPersistentHeader(
        delegate: props['delegate'],
      ),
  'SliverPinnedPersistentHeaderRenderObjectWidget': (props) =>
      SliverPinnedPersistentHeaderRenderObjectWidget(
        props['pa'][0],
      ),
  'SliverPinnedToBoxAdapter': (props) => SliverPinnedToBoxAdapter(
        key: props['key'],
        child: props['child'],
      ),
  'SliverToNestedScrollBoxAdapter': (props) => SliverToNestedScrollBoxAdapter(
        key: props['key'],
        child: props['child'],
        childExtent: props['childExtent']?.toDouble() ?? 0,
        onScrollOffsetChanged: props['onScrollOffsetChanged'],
      ),
  'ExtendedSliverAppbar': (props) => ExtendedSliverAppbar(
        leading: props['leading'],
        title: props['title'],
        actions: props['actions'],
        background: props['background'],
        toolBarColor: props['toolBarColor'],
        onBuild: props['onBuild'],
        statusbarHeight: props['statusbarHeight']?.toDouble(),
        toolbarHeight: props['toolbarHeight']?.toDouble(),
        isOpacityFadeWithToolbar: props['isOpacityFadeWithToolbar'] ?? true,
        isOpacityFadeWithTitle: props['isOpacityFadeWithTitle'] ?? true,
        mainAxisAlignment:
            props['mainAxisAlignment'] ?? MainAxisAlignment.spaceBetween,
        crossAxisAlignment:
            props['crossAxisAlignment'] ?? CrossAxisAlignment.center,
      ),
  'ExtendedText': (props) => ExtendedText(
        props['pa'][0],
        key: props['key'],
        style: props['style'],
        strutStyle: props['strutStyle'],
        textAlign: props['textAlign'],
        textDirection: props['textDirection'],
        locale: props['locale'],
        softWrap: props['softWrap'],
        overflow: props['overflow'],
        textScaleFactor: props['textScaleFactor']?.toDouble(),
        maxLines: props['maxLines'],
        semanticsLabel: props['semanticsLabel'],
        textWidthBasis: props['textWidthBasis'],
        textHeightBehavior: props['textHeightBehavior'],
        specialTextSpanBuilder: props['specialTextSpanBuilder'],
        onSpecialTextTap: props['onSpecialTextTap'],
        selectionEnabled: props['selectionEnabled'] ?? false,
        onTap: props['onTap'],
        selectionColor: props['selectionColor'],
        dragStartBehavior:
            props['dragStartBehavior'] ?? DragStartBehavior.start,
        selectionControls: props['selectionControls'],
        selectionHeightStyle:
            props['selectionHeightStyle'] ?? ui.BoxHeightStyle.tight,
        selectionWidthStyle:
            props['selectionWidthStyle'] ?? ui.BoxWidthStyle.tight,
        overflowWidget: props['overflowWidget'],
        joinZeroWidthSpace: props['joinZeroWidthSpace'] ?? false,
        shouldShowSelectionHandles: props['shouldShowSelectionHandles'],
        textSelectionGestureDetectorBuilder:
            props['textSelectionGestureDetectorBuilder'],
      ),
  'ExtendedText.rich': (props) => ExtendedText.rich(
        props['pa'][0],
        key: props['key'],
        style: props['style'],
        strutStyle: props['strutStyle'],
        textAlign: props['textAlign'],
        textDirection: props['textDirection'],
        locale: props['locale'],
        softWrap: props['softWrap'],
        overflow: props['overflow'],
        textScaleFactor: props['textScaleFactor']?.toDouble(),
        maxLines: props['maxLines'],
        semanticsLabel: props['semanticsLabel'],
        textWidthBasis: props['textWidthBasis'],
        textHeightBehavior: props['textHeightBehavior'],
        onSpecialTextTap: props['onSpecialTextTap'],
        selectionEnabled: props['selectionEnabled'] ?? false,
        onTap: props['onTap'],
        selectionColor: props['selectionColor'],
        dragStartBehavior:
            props['dragStartBehavior'] ?? DragStartBehavior.start,
        selectionControls: props['selectionControls'],
        selectionHeightStyle:
            props['selectionHeightStyle'] ?? ui.BoxHeightStyle.tight,
        selectionWidthStyle:
            props['selectionWidthStyle'] ?? ui.BoxWidthStyle.tight,
        overflowWidget: props['overflowWidget'],
        joinZeroWidthSpace: props['joinZeroWidthSpace'] ?? false,
        shouldShowSelectionHandles: props['shouldShowSelectionHandles'],
        textSelectionGestureDetectorBuilder:
            props['textSelectionGestureDetectorBuilder'],
      ),
  'TextOverflowWidget': (props) => TextOverflowWidget(
        child: props['child'],
        align: props['align'] ?? TextOverflowAlign.right,
        maxHeight: props['maxHeight']?.toDouble(),
        position: props['position'] ?? TextOverflowPosition.end,
        debugOverflowRectColor: props['debugOverflowRectColor'],
        clearType: props['clearType'] ?? TextOverflowClearType.blendModeClear,
      ),
  'TextOverflowAlign.left': TextOverflowAlign.left,
  'TextOverflowAlign.right': TextOverflowAlign.right,
  'TextOverflowAlign.center': TextOverflowAlign.center,
  'TextOverflowAlign.values': TextOverflowAlign.values,
  'TextOverflowPosition.start': TextOverflowPosition.start,
  'TextOverflowPosition.middle': TextOverflowPosition.middle,
  'TextOverflowPosition.end': TextOverflowPosition.end,
  'TextOverflowPosition.values': TextOverflowPosition.values,
  'TextOverflowClearType.clipRect': TextOverflowClearType.clipRect,
  'TextOverflowClearType.blendModeClear': TextOverflowClearType.blendModeClear,
  'TextOverflowClearType.values': TextOverflowClearType.values,
  'ExtendedRenderParagraph': (props) => ExtendedRenderParagraph(
        props['pa'][0],
        textAlign: props['textAlign'] ?? TextAlign.start,
        textDirection: props['textDirection'],
        softWrap: props['softWrap'] ?? true,
        overflow: props['overflow'] ?? TextOverflow.clip,
        textScaleFactor: props['textScaleFactor']?.toDouble() ?? 1.0,
        maxLines: props['maxLines'],
        textWidthBasis: props['textWidthBasis'] ?? TextWidthBasis.parent,
        locale: props['locale'],
        startHandleLayerLink: props['startHandleLayerLink'],
        endHandleLayerLink: props['endHandleLayerLink'],
        selectionColor: props['selectionColor'],
        selection: props['selection'],
        strutStyle: props['strutStyle'],
        children: as<RenderBox>(props['children']),
        textHeightBehavior: props['textHeightBehavior'],
        selectionHeightStyle:
            props['selectionHeightStyle'] ?? ui.BoxHeightStyle.tight,
        selectionWidthStyle:
            props['selectionWidthStyle'] ?? ui.BoxWidthStyle.tight,
        overflowWidget: props['overflowWidget'],
        textSelectionDelegate: props['textSelectionDelegate'],
        hasFocus: props['hasFocus'],
      ),
  'ExtendedTextSelection': (props) => ExtendedTextSelection(
        onTap: props['onTap'],
        softWrap: props['softWrap'],
        locale: props['locale'],
        textDirection: props['textDirection'],
        textAlign: props['textAlign'],
        maxLines: props['maxLines'],
        textScaleFactor: props['textScaleFactor']?.toDouble(),
        overflow: props['overflow'],
        text: props['text'],
        selectionColor: props['selectionColor'],
        dragStartBehavior:
            props['dragStartBehavior'] ?? DragStartBehavior.start,
        data: props['data'],
        textSelectionControls: props['textSelectionControls'],
        textWidthBasis: props['textWidthBasis'],
        textHeightBehavior: props['textHeightBehavior'],
        selectionHeightStyle:
            props['selectionHeightStyle'] ?? BoxHeightStyle.tight,
        selectionWidthStyle:
            props['selectionWidthStyle'] ?? BoxWidthStyle.tight,
        overFlowWidget: props['overFlowWidget'],
        strutStyle: props['strutStyle'],
        shouldShowSelectionHandles: props['shouldShowSelectionHandles'],
        textSelectionGestureDetectorBuilder:
            props['textSelectionGestureDetectorBuilder'],
        key: props['key'],
      ),
  'ExtendedTextSelectionPointerHandler': (props) =>
      ExtendedTextSelectionPointerHandler(
        child: props['child'],
        builder: props['builder'],
      ),
  'FixedOverscrollBouncingScrollPhysics': (props) =>
      FixedOverscrollBouncingScrollPhysics(
        parent: props['parent'],
      ),
  'EmptyWidget': (props) => EmptyWidget(
        props['pa'][0],
        emptyWidget: props['emptyWidget'],
      ),
  'IndicatorWidget': (props) => IndicatorWidget(
        props['pa'][0],
        tryAgain: props['tryAgain'],
        text: props['text'],
        backgroundColor: props['backgroundColor'],
        isSliver: props['isSliver'] ?? false,
        emptyWidget: props['emptyWidget'],
      ),
  'LoadingMoreList': (props) => LoadingMoreList(
        props['pa'][0],
        key: props['key'],
        onScrollNotification: props['onScrollNotification'],
      ),
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
  'GlowNotificationWidget': (props) => GlowNotificationWidget(
        props['pa'][0],
        showGlowLeading: props['showGlowLeading'] ?? false,
        showGlowTrailing: props['showGlowTrailing'] ?? false,
      ),
  'LoadingMoreSliverList': (props) => LoadingMoreSliverList(
        props['pa'][0],
        key: props['key'],
      ),
  'LoadingMoreCustomScrollView': (props) => LoadingMoreCustomScrollView(
        key: props['key'],
        scrollDirection: props['scrollDirection'] ?? Axis.vertical,
        reverse: props['reverse'] ?? false,
        controller: props['controller'],
        primary: props['primary'],
        physics: props['physics'],
        shrinkWrap: props['shrinkWrap'] ?? false,
        cacheExtent: props['cacheExtent']?.toDouble(),
        slivers: as<Widget>(props['slivers']) ?? const <Widget>[],
        semanticChildCount: props['semanticChildCount'],
        showGlowLeading: props['showGlowLeading'] ?? true,
        showGlowTrailing: props['showGlowTrailing'] ?? true,
        onScrollNotification: props['onScrollNotification'],
        dragStartBehavior:
            props['dragStartBehavior'] ?? DragStartBehavior.start,
        keyboardDismissBehavior: props['keyboardDismissBehavior'] ??
            ScrollViewKeyboardDismissBehavior.manual,
        restorationId: props['restorationId'],
        clipBehavior: props['clipBehavior'] ?? Clip.hardEdge,
        configs: as<SliverListConfig>(props['configs']),
        preloadExtent: props['preloadExtent']?.toDouble() ?? 0,
      ),
  'SliverListConfig': (props) => SliverListConfig(
        itemBuilder: props['itemBuilder'],
        sourceList: props['sourceList'],
        indicatorBuilder: props['indicatorBuilder'],
        gridDelegate: props['gridDelegate'],
        addAutomaticKeepAlives: props['addAutomaticKeepAlives'] ?? true,
        addRepaintBoundaries: props['addRepaintBoundaries'] ?? true,
        addSemanticIndexes: props['addSemanticIndexes'] ?? true,
        semanticIndexCallback:
            props['semanticIndexCallback'] ?? _kDefaultSemanticIndexCallback,
        semanticIndexOffset: props['semanticIndexOffset'] ?? 0,
        childCount: props['childCount'],
        autoLoadMore: props['autoLoadMore'] ?? true,
        extendedListDelegate: props['extendedListDelegate'],
        lastChildLayoutType:
            props['lastChildLayoutType'] ?? LastChildLayoutType.foot,
        padding: props['padding'],
        itemExtent: props['itemExtent']?.toDouble(),
        autoRefresh: props['autoRefresh'] ?? true,
        childCountBuilder: props['childCountBuilder'],
        getActualIndex: props['getActualIndex'],
        showNoMore: props['showNoMore'],
        lock: props['lock'],
      ),
  'LoadingMoreListConfig': (props) => LoadingMoreListConfig(
        props['pa'][0],
        props['pa'][1],
        indicatorBuilder: props['indicatorBuilder'],
        gridDelegate: props['gridDelegate'],
        autoLoadMore: props['autoLoadMore'] ?? true,
        extendedListDelegate: props['extendedListDelegate'],
        lastChildLayoutType:
            props['lastChildLayoutType'] ?? LastChildLayoutType.foot,
        autoRefresh: props['autoRefresh'] ?? true,
        childCount: props['childCount'],
        childCountBuilder: props['childCountBuilder'],
        getActualIndex: props['getActualIndex'],
      ),
  'SliverWaterfallFlow': (props) => SliverWaterfallFlow(
        key: props['key'],
        delegate: props['delegate'],
        gridDelegate: props['gridDelegate'],
      ),
  'SliverWaterfallFlow.count': (props) => SliverWaterfallFlow.count(
        key: props['key'],
        crossAxisCount: props['crossAxisCount'],
        mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
        crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
        children: as<Widget>(props['children']) ?? const <Widget>[],
        lastChildLayoutTypeBuilder: props['lastChildLayoutTypeBuilder'],
        collectGarbage: props['collectGarbage'],
        viewportBuilder: props['viewportBuilder'],
        closeToTrailing: props['closeToTrailing'] ?? false,
      ),
  'SliverWaterfallFlow.extent': (props) => SliverWaterfallFlow.extent(
        key: props['key'],
        maxCrossAxisExtent: props['maxCrossAxisExtent']?.toDouble() ?? 0,
        mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
        crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
        children: as<Widget>(props['children']) ?? const <Widget>[],
        lastChildLayoutTypeBuilder: props['lastChildLayoutTypeBuilder'],
        collectGarbage: props['collectGarbage'],
        viewportBuilder: props['viewportBuilder'],
        closeToTrailing: props['closeToTrailing'] ?? false,
      ),
  'WaterfallFlow': (props) => WaterfallFlow(
        key: props['key'],
        scrollDirection: props['scrollDirection'] ?? Axis.vertical,
        reverse: props['reverse'] ?? false,
        controller: props['controller'],
        primary: props['primary'],
        physics: props['physics'],
        shrinkWrap: props['shrinkWrap'] ?? false,
        padding: props['padding'],
        gridDelegate: props['gridDelegate'],
        addAutomaticKeepAlives: props['addAutomaticKeepAlives'] ?? true,
        addRepaintBoundaries: props['addRepaintBoundaries'] ?? true,
        addSemanticIndexes: props['addSemanticIndexes'] ?? true,
        cacheExtent: props['cacheExtent']?.toDouble(),
        children: as<Widget>(props['children']) ?? const <Widget>[],
        semanticChildCount: props['semanticChildCount'],
        dragStartBehavior:
            props['dragStartBehavior'] ?? DragStartBehavior.start,
        keyboardDismissBehavior: props['keyboardDismissBehavior'] ??
            ScrollViewKeyboardDismissBehavior.manual,
        restorationId: props['restorationId'],
        clipBehavior: props['clipBehavior'] ?? Clip.hardEdge,
      ),
  'WaterfallFlow.builder': (props) => WaterfallFlow.builder(
        key: props['key'],
        scrollDirection: props['scrollDirection'] ?? Axis.vertical,
        reverse: props['reverse'] ?? false,
        controller: props['controller'],
        primary: props['primary'],
        physics: props['physics'],
        shrinkWrap: props['shrinkWrap'] ?? false,
        padding: props['padding'],
        gridDelegate: props['gridDelegate'],
        itemBuilder: props['itemBuilder'],
        itemCount: props['itemCount'],
        addAutomaticKeepAlives: props['addAutomaticKeepAlives'] ?? true,
        addRepaintBoundaries: props['addRepaintBoundaries'] ?? true,
        addSemanticIndexes: props['addSemanticIndexes'] ?? true,
        cacheExtent: props['cacheExtent']?.toDouble(),
        semanticChildCount: props['semanticChildCount'],
        dragStartBehavior:
            props['dragStartBehavior'] ?? DragStartBehavior.start,
        keyboardDismissBehavior: props['keyboardDismissBehavior'] ??
            ScrollViewKeyboardDismissBehavior.manual,
        restorationId: props['restorationId'],
        clipBehavior: props['clipBehavior'] ?? Clip.hardEdge,
      ),
  'WaterfallFlow.custom': (props) => WaterfallFlow.custom(
        key: props['key'],
        scrollDirection: props['scrollDirection'] ?? Axis.vertical,
        reverse: props['reverse'] ?? false,
        controller: props['controller'],
        primary: props['primary'],
        physics: props['physics'],
        shrinkWrap: props['shrinkWrap'] ?? false,
        padding: props['padding'],
        gridDelegate: props['gridDelegate'],
        childrenDelegate: props['childrenDelegate'],
        cacheExtent: props['cacheExtent']?.toDouble(),
        semanticChildCount: props['semanticChildCount'],
        dragStartBehavior:
            props['dragStartBehavior'] ?? DragStartBehavior.start,
        keyboardDismissBehavior: props['keyboardDismissBehavior'] ??
            ScrollViewKeyboardDismissBehavior.manual,
        restorationId: props['restorationId'],
        clipBehavior: props['clipBehavior'] ?? Clip.hardEdge,
      ),
  'WaterfallFlow.count': (props) => WaterfallFlow.count(
        key: props['key'],
        scrollDirection: props['scrollDirection'] ?? Axis.vertical,
        reverse: props['reverse'] ?? false,
        controller: props['controller'],
        primary: props['primary'],
        physics: props['physics'],
        shrinkWrap: props['shrinkWrap'] ?? false,
        padding: props['padding'],
        crossAxisCount: props['crossAxisCount'],
        mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
        crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
        addAutomaticKeepAlives: props['addAutomaticKeepAlives'] ?? true,
        addRepaintBoundaries: props['addRepaintBoundaries'] ?? true,
        addSemanticIndexes: props['addSemanticIndexes'] ?? true,
        cacheExtent: props['cacheExtent']?.toDouble(),
        children: as<Widget>(props['children']) ?? const <Widget>[],
        semanticChildCount: props['semanticChildCount'],
        dragStartBehavior:
            props['dragStartBehavior'] ?? DragStartBehavior.start,
        keyboardDismissBehavior: props['keyboardDismissBehavior'] ??
            ScrollViewKeyboardDismissBehavior.manual,
        lastChildLayoutTypeBuilder: props['lastChildLayoutTypeBuilder'],
        collectGarbage: props['collectGarbage'],
        viewportBuilder: props['viewportBuilder'],
        closeToTrailing: props['closeToTrailing'] ?? false,
        restorationId: props['restorationId'],
        clipBehavior: props['clipBehavior'] ?? Clip.hardEdge,
      ),
  'WaterfallFlow.extent': (props) => WaterfallFlow.extent(
        key: props['key'],
        scrollDirection: props['scrollDirection'] ?? Axis.vertical,
        reverse: props['reverse'] ?? false,
        controller: props['controller'],
        primary: props['primary'],
        physics: props['physics'],
        shrinkWrap: props['shrinkWrap'] ?? false,
        padding: props['padding'],
        maxCrossAxisExtent: props['maxCrossAxisExtent']?.toDouble() ?? 0,
        mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
        crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
        addAutomaticKeepAlives: props['addAutomaticKeepAlives'] ?? true,
        addRepaintBoundaries: props['addRepaintBoundaries'] ?? true,
        addSemanticIndexes: props['addSemanticIndexes'] ?? true,
        children: as<Widget>(props['children']) ?? const <Widget>[],
        semanticChildCount: props['semanticChildCount'],
        dragStartBehavior:
            props['dragStartBehavior'] ?? DragStartBehavior.start,
        keyboardDismissBehavior: props['keyboardDismissBehavior'] ??
            ScrollViewKeyboardDismissBehavior.manual,
        lastChildLayoutTypeBuilder: props['lastChildLayoutTypeBuilder'],
        collectGarbage: props['collectGarbage'],
        viewportBuilder: props['viewportBuilder'],
        closeToTrailing: props['closeToTrailing'] ?? false,
        restorationId: props['restorationId'],
        clipBehavior: props['clipBehavior'] ?? Clip.hardEdge,
      ),
  'SliverWaterfallFlowDelegateWithFixedCrossAxisCount': (props) =>
      SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
        crossAxisCount: props['crossAxisCount'],
        mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
        crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
        lastChildLayoutTypeBuilder: props['lastChildLayoutTypeBuilder'],
        collectGarbage: props['collectGarbage'],
        viewportBuilder: props['viewportBuilder'],
        closeToTrailing: props['closeToTrailing'] ?? false,
      ),
  'SliverWaterfallFlowDelegateWithMaxCrossAxisExtent': (props) =>
      SliverWaterfallFlowDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: props['maxCrossAxisExtent']?.toDouble() ?? 0,
        mainAxisSpacing: props['mainAxisSpacing']?.toDouble() ?? 0.0,
        crossAxisSpacing: props['crossAxisSpacing']?.toDouble() ?? 0.0,
        lastChildLayoutTypeBuilder: props['lastChildLayoutTypeBuilder'],
        collectGarbage: props['collectGarbage'],
        viewportBuilder: props['viewportBuilder'],
        closeToTrailing: props['closeToTrailing'] ?? false,
      ),
  'SliverWaterfallFlowParentData': (props) => SliverWaterfallFlowParentData(),
  'RenderSliverWaterfallFlow': (props) => RenderSliverWaterfallFlow(
        childManager: props['childManager'],
        gridDelegate: props['gridDelegate'],
      ),
  'ExtendedListDelegate': (props) => ExtendedListDelegate(
        lastChildLayoutTypeBuilder: props['lastChildLayoutTypeBuilder'],
        collectGarbage: props['collectGarbage'],
        viewportBuilder: props['viewportBuilder'],
        closeToTrailing: props['closeToTrailing'] ?? false,
      ),
  'LastChildLayoutType.none': LastChildLayoutType.none,
  'LastChildLayoutType.fullCrossAxisExtent':
      LastChildLayoutType.fullCrossAxisExtent,
  'LastChildLayoutType.foot': LastChildLayoutType.foot,
  'LastChildLayoutType.values': LastChildLayoutType.values,
  'ImageSpan': (props) => ImageSpan(
        props['pa'][0],
        key: props['key'],
        imageWidth: props['imageWidth']?.toDouble() ?? 0,
        imageHeight: props['imageHeight']?.toDouble() ?? 0,
        margin: props['margin'],
        start: props['start'] ?? 0,
        alignment: props['alignment'] ?? ui.PlaceholderAlignment.middle,
        actualText: props['actualText'],
        baseline: props['baseline'],
        fit: props['fit'] ?? BoxFit.scaleDown,
        loadingBuilder: props['loadingBuilder'],
        frameBuilder: props['frameBuilder'],
        semanticLabel: props['semanticLabel'],
        excludeFromSemantics: props['excludeFromSemantics'] ?? false,
        color: props['color'],
        colorBlendMode: props['colorBlendMode'],
        imageAlignment: props['imageAlignment'] ?? Alignment.center,
        repeat: props['repeat'] ?? ImageRepeat.noRepeat,
        centerSlice: props['centerSlice'],
        matchTextDirection: props['matchTextDirection'] ?? false,
        gaplessPlayback: props['gaplessPlayback'] ?? false,
        filterQuality: props['filterQuality'] ?? FilterQuality.low,
        onTap: props['onTap'],
        behavior: props['behavior'] ?? HitTestBehavior.deferToChild,
      ),
  'TextHighlightPainter': (props) => TextHighlightPainter(
        highlightedRange: props['highlightedRange'],
        highlightColor: props['highlightColor'],
      ),
  'SpecialTextSpan': (props) => SpecialTextSpan(
        style: props['style'],
        text: props['text'],
        actualText: props['actualText'],
        start: props['start'] ?? 0,
        deleteAll: props['deleteAll'] ?? true,
        recognizer: props['recognizer'],
        children: as<InlineSpan>(props['children']),
        semanticsLabel: props['semanticsLabel'],
        mouseCursor: props['mouseCursor'],
        onEnter: props['onEnter'],
        onExit: props['onExit'],
      ),
  'TextPainterHelper': (props) => TextPainterHelper(),
  'ExtendedWidgetSpan': (props) => ExtendedWidgetSpan(
        child: props['child'],
        actualText: props['actualText'] ?? '\uFFFC',
        start: props['start'] ?? 0,
        deleteAll: props['deleteAll'] ?? true,
        alignment: props['alignment'] ?? ui.PlaceholderAlignment.bottom,
        baseline: props['baseline'],
        style: props['style'],
        hide: props['hide'] ?? false,
      ),
  'WidgetSpanSize': (props) => WidgetSpanSize(),
  'BackgroundTextSpan': (props) => BackgroundTextSpan(
        style: props['style'],
        text: props['text'],
        recognizer: props['recognizer'],
        background: props['background'],
        clipBorderRadius: props['clipBorderRadius'],
        paintBackground: props['paintBackground'],
        actualText: props['actualText'],
        start: props['start'] ?? 0,
        deleteAll: props['deleteAll'] ?? false,
        semanticsLabel: props['semanticsLabel'],
      ),
  'ScribbleFocusable': (props) => ScribbleFocusable(
        child: props['child'],
        focusNode: props['focusNode'],
        editableKey: props['editableKey'],
        updateSelectionRects: props['updateSelectionRects'],
        enabled: props['enabled'],
      ),
  'ScribblePlaceholder': (props) => ScribblePlaceholder(
        child: props['child'],
        alignment: props['alignment'] ?? ui.PlaceholderAlignment.bottom,
        baseline: props['baseline'],
        size: props['size'],
      ),
  'ExtendedTextSelectionGestureDetectorBuilder': (props) =>
      ExtendedTextSelectionGestureDetectorBuilder(
        delegate: props['delegate'],
        showToolbar: props['showToolbar'],
        hideToolbar: props['hideToolbar'],
      ),
  'CommonTextSelectionGestureDetectorBuilder': (props) =>
      CommonTextSelectionGestureDetectorBuilder(
        delegate: props['delegate'],
        showToolbar: props['showToolbar'],
        hideToolbar: props['hideToolbar'],
        onTap: props['onTap'],
        context: props['context'],
        requestKeyboard: props['requestKeyboard'],
      ),
  'ExtendedTextSelectionOverlay': (props) => ExtendedTextSelectionOverlay(
        value: props['value'],
        context: props['context'],
        debugRequiredFor: props['debugRequiredFor'],
        toolbarLayerLink: props['toolbarLayerLink'],
        startHandleLayerLink: props['startHandleLayerLink'],
        endHandleLayerLink: props['endHandleLayerLink'],
        renderObject: props['renderObject'],
        selectionControls: props['selectionControls'],
        handlesVisible: props['handlesVisible'] ?? false,
        selectionDelegate: props['selectionDelegate'],
        dragStartBehavior:
            props['dragStartBehavior'] ?? DragStartBehavior.start,
        onSelectionHandleTapped: props['onSelectionHandleTapped'],
        clipboardStatus: props['clipboardStatus'],
      ),
  'SelectionOverlay': (props) => extended_text_library.SelectionOverlay(
        context: props['context'],
        debugRequiredFor: props['debugRequiredFor'],
        startHandleType: props['startHandleType'],
        lineHeightAtStart: props['lineHeightAtStart']?.toDouble() ?? 0,
        startHandlesVisible: props['startHandlesVisible'],
        onStartHandleDragStart: props['onStartHandleDragStart'],
        onStartHandleDragUpdate: props['onStartHandleDragUpdate'],
        onStartHandleDragEnd: props['onStartHandleDragEnd'],
        endHandleType: props['endHandleType'],
        lineHeightAtEnd: props['lineHeightAtEnd']?.toDouble() ?? 0,
        endHandlesVisible: props['endHandlesVisible'],
        onEndHandleDragStart: props['onEndHandleDragStart'],
        onEndHandleDragUpdate: props['onEndHandleDragUpdate'],
        onEndHandleDragEnd: props['onEndHandleDragEnd'],
        toolbarVisible: props['toolbarVisible'],
        selectionEndPoints:
            as<TextSelectionPoint>(props['selectionEndPoints']) ?? const [],
        selectionControls: props['selectionControls'],
        selectionDelegate: props['selectionDelegate'],
        clipboardStatus: props['clipboardStatus'],
        startHandleLayerLink: props['startHandleLayerLink'],
        endHandleLayerLink: props['endHandleLayerLink'],
        toolbarLayerLink: props['toolbarLayerLink'],
        dragStartBehavior:
            props['dragStartBehavior'] ?? DragStartBehavior.start,
        onSelectionHandleTapped: props['onSelectionHandleTapped'],
        toolbarLocation: props['toolbarLocation'],
      ),
  'SelectionOverlay.fadeDuration':
      extended_text_library.SelectionOverlay.fadeDuration,
  'ExtendedFileImageProvider': (props) => ExtendedFileImageProvider(
        props['pa'][0],
        scale: props['scale']?.toDouble() ?? 1.0,
        cacheRawData: props['cacheRawData'] ?? false,
        imageCacheName: props['imageCacheName'],
      ),
  'ExtendedMemoryImageProvider': (props) => ExtendedMemoryImageProvider(
        props['pa'][0],
        scale: props['scale']?.toDouble() ?? 1.0,
        cacheRawData: props['cacheRawData'] ?? false,
        imageCacheName: props['imageCacheName'],
      ),
  'ExtendedResizeImage': (props) => ExtendedResizeImage(
        props['pa'][0],
        compressionRatio: props['compressionRatio']?.toDouble(),
        maxBytes: props['maxBytes'] ?? 50 << 10,
        width: props['width'],
        height: props['height'],
        allowUpscaling: props['allowUpscaling'] ?? false,
        cacheRawData: props['cacheRawData'] ?? false,
        imageCacheName: props['imageCacheName'],
      ),
  'ExtendedResizeImage.resizeIfNeeded': (props) =>
      ExtendedResizeImage.resizeIfNeeded(
        provider: props['provider'],
        cacheWidth: props['cacheWidth'],
        cacheHeight: props['cacheHeight'],
        compressionRatio: props['compressionRatio']?.toDouble(),
        maxBytes: props['maxBytes'] ?? 50 << 10,
        cacheRawData: props['cacheRawData'] ?? false,
        imageCacheName: props['imageCacheName'],
      ),
  'ExtendedExactAssetImageProvider': (props) => ExtendedExactAssetImageProvider(
        props['pa'][0],
        bundle: props['bundle'],
        package: props['package'],
        scale: props['scale']?.toDouble() ?? 1.0,
        cacheRawData: props['cacheRawData'] ?? false,
        imageCacheName: props['imageCacheName'],
      ),
  'ExtendedAssetImageProvider': (props) => ExtendedAssetImageProvider(
        props['pa'][0],
        bundle: props['bundle'],
        package: props['package'],
        cacheRawData: props['cacheRawData'] ?? false,
        imageCacheName: props['imageCacheName'],
      ),
  'ExtendedAssetBundleImageKey': (props) => ExtendedAssetBundleImageKey(
        bundle: props['bundle'],
        name: props['name'],
        scale: props['scale']?.toDouble() ?? 0,
        cacheRawData: props['cacheRawData'],
        imageCacheName: props['imageCacheName'],
      ),
  'IndicatorStatus.none': IndicatorStatus.none,
  'IndicatorStatus.loadingMoreBusying': IndicatorStatus.loadingMoreBusying,
  'IndicatorStatus.fullScreenBusying': IndicatorStatus.fullScreenBusying,
  'IndicatorStatus.error': IndicatorStatus.error,
  'IndicatorStatus.fullScreenError': IndicatorStatus.fullScreenError,
  'IndicatorStatus.noMoreLoad': IndicatorStatus.noMoreLoad,
  'IndicatorStatus.empty': IndicatorStatus.empty,
  'IndicatorStatus.values': IndicatorStatus.values,
  'PullToRefreshNotification': (props) => PullToRefreshNotification(
        key: props['key'],
        child: props['child'],
        onRefresh: props['onRefresh'],
        color: props['color'],
        pullBackOnRefresh: props['pullBackOnRefresh'] ?? false,
        maxDragOffset: props['maxDragOffset']?.toDouble(),
        notificationPredicate:
            props['notificationPredicate'] ?? defaultNotificationPredicate,
        armedDragUpCancel: props['armedDragUpCancel'] ?? true,
        pullBackCurve: props['pullBackCurve'] ?? Curves.linear,
        reverse: props['reverse'] ?? false,
        pullBackOnError: props['pullBackOnError'] ?? false,
        pullBackDuration:
            props['pullBackDuration'] ?? const Duration(milliseconds: 400),
        refreshOffset: props['refreshOffset']?.toDouble(),
        reachToRefreshOffset: props['reachToRefreshOffset']?.toDouble(),
      ),
  'PullToRefreshScrollNotificationInfo': (props) =>
      PullToRefreshScrollNotificationInfo(
        props['pa'][0],
        props['pa'][1]?.toDouble(),
        props['pa'][2],
        props['pa'][3],
      ),
  'PullToRefreshContainer': (props) => PullToRefreshContainer(
        props['pa'][0],
      ),
  'PullToRefreshCupertinoActivityIndicator': (props) =>
      PullToRefreshCupertinoActivityIndicator(
        key: props['key'],
        animating: props['animating'] ?? true,
        radius: props['radius']?.toDouble() ??
            PullToRefreshCupertinoActivityIndicator.defaultIndicatorRadius,
        activeColor: props['activeColor'],
      ),
  'PullToRefreshCupertinoActivityIndicator.defaultIndicatorRadius':
      PullToRefreshCupertinoActivityIndicator.defaultIndicatorRadius,
  'PullToRefreshIndicatorMode.drag': PullToRefreshIndicatorMode.drag,
  'PullToRefreshIndicatorMode.armed': PullToRefreshIndicatorMode.armed,
  'PullToRefreshIndicatorMode.snap': PullToRefreshIndicatorMode.snap,
  'PullToRefreshIndicatorMode.refresh': PullToRefreshIndicatorMode.refresh,
  'PullToRefreshIndicatorMode.done': PullToRefreshIndicatorMode.done,
  'PullToRefreshIndicatorMode.canceled': PullToRefreshIndicatorMode.canceled,
  'PullToRefreshIndicatorMode.error': PullToRefreshIndicatorMode.error,
  'PullToRefreshIndicatorMode.values': PullToRefreshIndicatorMode.values,
  'AlwaysScrollableClampingScrollPhysics': (props) =>
      AlwaysScrollableClampingScrollPhysics(
        parent: props['parent'],
      ),
};

Map<String, bool> appMapping = {
  'Assets': false,
  'SugarCommon': false,
  'SugarStringExtension': false,
  'SugarIterable': false,
  'SugarMap': false,
  'SugarBool': false,
  'SugarDouble': false,
  'SugarInt': false,
  'SugarList': false,
  'SugarNum': false,
  'SugarString': false,
  'LoadingMoreRepository': false,
  'ImageGrid': true,
  'ImageGrid1': true,
  'HeroWidget': true,
  'ShareDataWidget': true,
  'ExtendedFairWidget': true,
  'ExtendedFrameSeparateWidget': true,
  'PullToRefreshHeader': true,
  'RefreshImage': true,
  'ItemSizeInfoNotifier': true,
  'InitialRenderSizeChangedWithCallback': false,
  'LayoutInfoNotification': false,
  'SizeCacheWidget': true,
  'TaskEntry': false,
  'FrameSeparateWidget': true,
  'ToastPosition': false,
  'OffsetAnimationBuilder': false,
  'OpacityAnimationBuilder': false,
  'LikeButton': true,
  'BubblesColor': false,
  'CircleColor': false,
  'OvershootCurve': false,
  'LikeCountClip': false,
  'LikeCountAnimationType': false,
  'CountPostion': false,
  'LoadState': false,
  'ExtendedImageMode': false,
  'Boundary': false,
  'GestureDetails': false,
  'GestureConfig': false,
  'GestureAnimation': false,
  'InitialAlignment': false,
  'ActionType': false,
  'ExtendedImageEditor': true,
  'ExtendedImageBorderPainter': false,
  'ExtendedImage': true,
  'ExtendedRawImage': true,
  'ExtendedImageGesture': true,
  'ExtendedImageSlidePage': true,
  'SlideAxis': false,
  'SlideType': false,
  'ExtendedRenderImage': false,
  'EditActionDetails': false,
  'EditorConfig': false,
  'CropAspectRatios': false,
  'EditorCropLayerPainter': false,
  'ExtendedImageCropLayerPainter': false,
  'InitCropRectType': false,
  'ExtendedImageSlidePageHandler': true,
  'ExtendedImageGesturePageView': true,
  'ExtendedSliverFillViewport': true,
  'ExtendedRenderSliverFillViewport': false,
  'ExtendedPageController': false,
  'SliverPinnedPersistentHeader': true,
  'SliverPinnedPersistentHeaderRenderObjectWidget': true,
  'SliverPinnedToBoxAdapter': true,
  'SliverToNestedScrollBoxAdapter': true,
  'ExtendedSliverAppbar': true,
  'ExtendedText': true,
  'TextOverflowWidget': true,
  'TextOverflowAlign': false,
  'TextOverflowPosition': false,
  'TextOverflowClearType': false,
  'ExtendedRenderParagraph': false,
  'ExtendedTextSelection': true,
  'ExtendedTextSelectionPointerHandler': true,
  'FixedOverscrollBouncingScrollPhysics': false,
  'EmptyWidget': true,
  'IndicatorWidget': true,
  'LoadingMoreList': true,
  'ListConfig': false,
  'GlowNotificationWidget': true,
  'LoadingMoreSliverList': true,
  'LoadingMoreCustomScrollView': true,
  'SliverListConfig': false,
  'LoadingMoreListConfig': false,
  'SliverWaterfallFlow': true,
  'WaterfallFlow': true,
  'SliverWaterfallFlowDelegateWithFixedCrossAxisCount': false,
  'SliverWaterfallFlowDelegateWithMaxCrossAxisExtent': false,
  'SliverWaterfallFlowParentData': false,
  'RenderSliverWaterfallFlow': false,
  'ExtendedListDelegate': false,
  'LastChildLayoutType': false,
  'ImageSpan': false,
  'TextHighlightPainter': false,
  'SpecialTextSpan': false,
  'TextPainterHelper': false,
  'ExtendedWidgetSpan': false,
  'WidgetSpanSize': false,
  'BackgroundTextSpan': false,
  'ScribbleFocusable': true,
  'ScribblePlaceholder': false,
  'ExtendedTextSelectionGestureDetectorBuilder': false,
  'CommonTextSelectionGestureDetectorBuilder': false,
  'ExtendedTextSelectionOverlay': false,
  'SelectionOverlay': false,
  'ExtendedFileImageProvider': false,
  'ExtendedMemoryImageProvider': false,
  'ExtendedResizeImage': false,
  'ExtendedExactAssetImageProvider': false,
  'ExtendedAssetImageProvider': false,
  'ExtendedAssetBundleImageKey': false,
  'IndicatorStatus': false,
  'PullToRefreshNotification': true,
  'PullToRefreshScrollNotificationInfo': false,
  'PullToRefreshContainer': true,
  'PullToRefreshCupertinoActivityIndicator': true,
  'PullToRefreshIndicatorMode': false,
  'AlwaysScrollableClampingScrollPhysics': false,
};

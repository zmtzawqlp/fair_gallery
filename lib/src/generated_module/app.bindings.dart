// ignore_for_file: unused_import, unnecessary_import, implementation_imports, unused_shown_name, deprecated_member_use, prefer_single_quotes, unused_element, unused_field, duplicate_import, prefer_const_constructors
import 'package:extended_text_library/extended_text_library.dart'
    as extended_text_library;
import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
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
import 'package:fair_gallery/src/widget/source_code_view_button.dart';
import 'package:fair_gallery/src/widget/app_bar.dart';
import 'package:fair/fair.dart';

/// flutterVersion = '3.3.9';
/// dartVersion = '2.18.5';
/// widgetCount = 10;
/// apiCount = 12;
Map<String, dynamic> appComponents = {
  'Assets.assets_fair_lib_src_page_complex_photo_gallery_fair_bin':
      Assets.assets_fair_lib_src_page_complex_photo_gallery_fair_bin,
  'Assets.assets_fair_lib_src_page_complex_photo_gallery_fair_js':
      Assets.assets_fair_lib_src_page_complex_photo_gallery_fair_js,
  'Assets.assets_fair_lib_src_page_complex_photo_gallery_fair_json':
      Assets.assets_fair_lib_src_page_complex_photo_gallery_fair_json,
  'Assets.assets_fair_lib_src_page_complex_photo_gallery1_fair_bin':
      Assets.assets_fair_lib_src_page_complex_photo_gallery1_fair_bin,
  'Assets.assets_fair_lib_src_page_complex_photo_gallery1_fair_js':
      Assets.assets_fair_lib_src_page_complex_photo_gallery1_fair_js,
  'Assets.assets_fair_lib_src_page_complex_photo_gallery1_fair_json':
      Assets.assets_fair_lib_src_page_complex_photo_gallery1_fair_json,
  'Assets.assets_fair_lib_src_page_complex_photo_gallery_item_fair_bin':
      Assets.assets_fair_lib_src_page_complex_photo_gallery_item_fair_bin,
  'Assets.assets_fair_lib_src_page_complex_photo_gallery_item_fair_js':
      Assets.assets_fair_lib_src_page_complex_photo_gallery_item_fair_js,
  'Assets.assets_fair_lib_src_page_complex_photo_gallery_item_fair_json':
      Assets.assets_fair_lib_src_page_complex_photo_gallery_item_fair_json,
  'Assets.assets_fair_lib_src_page_complex_photo_swiper_fair_bin':
      Assets.assets_fair_lib_src_page_complex_photo_swiper_fair_bin,
  'Assets.assets_fair_lib_src_page_complex_photo_swiper_fair_js':
      Assets.assets_fair_lib_src_page_complex_photo_swiper_fair_js,
  'Assets.assets_fair_lib_src_page_complex_photo_swiper_fair_json':
      Assets.assets_fair_lib_src_page_complex_photo_swiper_fair_json,
  'Assets.assets_fair_lib_src_page_simple_function_domain_fair_bin':
      Assets.assets_fair_lib_src_page_simple_function_domain_fair_bin,
  'Assets.assets_fair_lib_src_page_simple_function_domain_fair_js':
      Assets.assets_fair_lib_src_page_simple_function_domain_fair_js,
  'Assets.assets_fair_lib_src_page_simple_function_domain_fair_json':
      Assets.assets_fair_lib_src_page_simple_function_domain_fair_json,
  'Assets.assets_fair_lib_src_page_simple_plugin_fair_bin':
      Assets.assets_fair_lib_src_page_simple_plugin_fair_bin,
  'Assets.assets_fair_lib_src_page_simple_plugin_fair_js':
      Assets.assets_fair_lib_src_page_simple_plugin_fair_js,
  'Assets.assets_fair_lib_src_page_simple_plugin_fair_json':
      Assets.assets_fair_lib_src_page_simple_plugin_fair_json,
  'Assets.assets_fair_lib_src_page_simple_sugar_fair_bin':
      Assets.assets_fair_lib_src_page_simple_sugar_fair_bin,
  'Assets.assets_fair_lib_src_page_simple_sugar_fair_js':
      Assets.assets_fair_lib_src_page_simple_sugar_fair_js,
  'Assets.assets_fair_lib_src_page_simple_sugar_fair_json':
      Assets.assets_fair_lib_src_page_simple_sugar_fair_json,
  'Assets.assets_fair_basic_config_json': Assets.assets_fair_basic_config_json,
  'Assets.assets_image_40_png': Assets.assets_image_40_png,
  'Assets.assets_image_avatar_jpg': Assets.assets_image_avatar_jpg,
  'Assets.assets_image_fluttercandies_grey_png':
      Assets.assets_image_fluttercandies_grey_png,
  'Assets.assets_image_loading_gif': Assets.assets_image_loading_gif,
  'Assets.assets_image_love_png': Assets.assets_image_love_png,
  'Assets.assets_image_sun_glasses_png': Assets.assets_image_sun_glasses_png,
  'Assets.assets_page_complex_photo_gallery_dart':
      Assets.assets_page_complex_photo_gallery_dart,
  'Assets.assets_page_complex_photo_gallery1_dart':
      Assets.assets_page_complex_photo_gallery1_dart,
  'Assets.assets_page_complex_photo_gallery_item_dart':
      Assets.assets_page_complex_photo_gallery_item_dart,
  'Assets.assets_page_complex_photo_swiper_dart':
      Assets.assets_page_complex_photo_swiper_dart,
  'Assets.assets_page_simple_function_domain_dart':
      Assets.assets_page_simple_function_domain_dart,
  'Assets.assets_page_simple_plugin_dart':
      Assets.assets_page_simple_plugin_dart,
  'Assets.assets_page_simple_sugar_dart': Assets.assets_page_simple_sugar_dart,
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
  'SugarCommon.nullOrDefault': (props) => SugarCommon.nullOrDefault(
        props['pa'][0],
        props['pa'][1],
      ),
  'SugarCommon.dateTimeConvert': (props) => SugarCommon.dateTimeConvert(
        props['pa'][0],
      ),
  'SugarCommon.vsTheme': (props) => SugarCommon.vsTheme(),
  'CommomAppBar': (props) => CommomAppBar(
        key: props['key'],
        title: props['title'],
        asset: props['asset'],
      ),
  'SugarStringExtension.test': (props) => SugarStringExtension.test(
        props['pa'][0],
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
  'SugarList.filled': (props) => SugarList.filled(
        props['pa'][0],
        props['pa'][1],
        growable: props['growable'] ?? false,
      ),
  'SugarList.empty': (props) => SugarList.empty(
        growable: props['growable'] ?? false,
      ),
  'SugarList.from': (props) => SugarList.from(
        props['pa'][0],
        growable: props['growable'] ?? true,
      ),
  'SugarList.of': (props) => SugarList.of(
        props['pa'][0],
        growable: props['growable'] ?? true,
      ),
  'SugarList.generate': (props) => SugarList.generate(
        props['pa'][0],
        props['pa'][1],
        growable: props['growable'] ?? true,
      ),
  'SugarList.unmodifiable': (props) => SugarList.unmodifiable(
        props['pa'][0],
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
  'SourceCodeViewButton': (props) => SourceCodeViewButton(
        key: props['key'],
        asset: props['asset'],
      ),
};

Map<String, bool> appMapping = {
  'Assets': false,
  'SugarCommon': false,
  'CommomAppBar': true,
  'SugarStringExtension': false,
  'SugarBool': false,
  'SugarDouble': false,
  'SugarInt': false,
  'SugarIterable': false,
  'SugarList': false,
  'SugarMap': false,
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
  'SourceCodeViewButton': true,
};

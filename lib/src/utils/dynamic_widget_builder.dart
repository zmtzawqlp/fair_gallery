// ignore_for_file: implementation_imports, prefer_function_declarations_over_variables

import 'package:extended_image/extended_image.dart';
import 'package:fair/src/render/builder.dart';
import 'package:fair/src/render/domain.dart';
import 'package:flutter/material.dart';
import 'package:fair/src/type.dart';
import 'package:loading_more_list/loading_more_list.dart';
import 'package:pull_to_refresh_notification/pull_to_refresh_notification.dart';

class CustomDynamicWidgetBuilder extends DynamicWidgetBuilder {
  CustomDynamicWidgetBuilder(
    super.proxyMirror,
    super.page,
    super.bound, {
    super.bundle,
  });

  @override
  dynamic convert(BuildContext context, Map map, Map? methodMap,
      {Domain? domain}) {
    var name = map[tag];
    // &
    if (name == 'SugarBool.and') {
      var p0 = pa0Value(pa0(map), methodMap, context, domain);
      if (!p0) {
        return false;
      }
      return p0 & pa0Value(pa1(map), methodMap, context, domain);
    }
    // |
    else if (name == 'SugarBool.inclusiveOr') {
      var p0 = pa0Value(pa0(map), methodMap, context, domain);
      if (p0) {
        return true;
      }
      return pa0Value(pa1(map), methodMap, context, domain);
    } else if (name == 'SugarCommon.loadingMoreIndicatorBuilder') {
      LoadingMoreIndicatorBuilder builder = (
        _,
        IndicatorStatus status,
      ) {
        var source = pa0(map);
        var na = named(name, map['na'], methodMap, context, domain);

        if (source is! List) {
          throw Exception(
              'SugarCommon.loadingMoreIndicatorBuilder has no valid cases array');
        }

        for (var caseItem in source) {
          var na = caseItem['na'];
          var sugarCase = pa0Value(na['sugarCase'], methodMap, context, domain);
          if (sugarCase == status) {
            return pa0Value(na['reValue'], methodMap, context, domain);
          }
        }

        var props = na.data;
        return IndicatorWidget(
          status,
          tryAgain: props['tryAgain'],
          text: props['text'],
          backgroundColor: props['backgroundColor'],
          isSliver: props['isSliver'] ?? false,
          emptyWidget: props['emptyWidget'],
        );
      };
      return builder;
    } else if (name == 'SugarCommon.loadingMoreItemBuilder') {
      dynamic source = pa0(map);
      assert(source is Map);
      List functionParameters = FunctionDomain.pa(source);
      LoadingMoreItemBuilder builder = (builderContext, item, index) {
        return convert(
          context,
          source,
          methodMap,
          domain: FunctionDomain(
            {
              functionParameters[0]: builderContext,
              functionParameters[1]: item,
              functionParameters[2]: index,
            },
            parent: domain,
          ),
        );
      };
      return builder;
    } else if (name == 'SugarCommon.pullToRefreshContainerBuilder') {
      dynamic source = pa0(map);
      assert(source is Map);
      List functionParameters = FunctionDomain.pa(source);
      PullToRefreshContainerBuilder builder = (info) {
        return convert(
          context,
          source,
          methodMap,
          domain: FunctionDomain(
            {
              functionParameters[0]: info,
            },
            parent: domain,
          ),
        );
      };
      return builder;
    } else if (name == 'SugarCommon.onImageStateChanged') {
      dynamic source = pa0(map);
      assert(source is Map);
      List functionParameters = FunctionDomain.pa(source);
      Widget? Function(ExtendedImageState state) builder = (state) {
        return convert(
          context,
          source,
          methodMap,
          domain: FunctionDomain(
            {
              functionParameters[0]: state.extendedImageLoadState,
            },
            parent: domain,
          ),
        );
      };
      return builder;
    }

    return super.convert(
      context,
      map,
      methodMap,
      domain: domain,
    );
  }

  dynamic getMapper(String name, BuildContext context, Map map, Map? methodMap,
      {Domain? domain}) {
    var module = bound?.modules?.moduleOf(name)?.call();
    dynamic mapper = module;
    mapper ??= bound?.functionOf(name) ?? bound?.valueOf(name);
    mapper ??= proxyMirror?.componentOf(name);
    return mapper;
  }
}

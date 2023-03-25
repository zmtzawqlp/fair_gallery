// ignore_for_file: implementation_imports, prefer_function_declarations_over_variables

import 'package:fair/src/render/builder.dart';
import 'package:fair/src/render/domain.dart';
import 'package:flutter/material.dart';
import 'package:fair/src/type.dart';
import 'package:loading_more_list/loading_more_list.dart';

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
      var p0 = p0Value(pa0(map), methodMap, context, domain);
      if (!p0) {
        return false;
      }
      return p0 & p0Value(pa1(map), methodMap, context, domain);
    }
    // |
    else if (name == 'SugarBool.inclusiveOr') {
      var p0 = p0Value(pa0(map), methodMap, context, domain);
      if (p0) {
        return true;
      }
      return p0Value(pa1(map), methodMap, context, domain);
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
          var sugarCase = p0Value(na['sugarCase'], methodMap, context, domain);
          if (sugarCase == status) {
            return p0Value(na['reValue'], methodMap, context, domain);
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
      LoadingMoreItemBuilder builder = (context, item, index) {
        dynamic source = pa0(map);
        assert(source is Map);
        return convert(
          context,
          source,
          methodMap,
          domain: LoadingMoreItemBuilderDomain(
            context: context,
            item: item,
            index: index,
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

class LoadingMoreItemBuilderDomain extends IndexDomain {
  LoadingMoreItemBuilderDomain(
      {required int index,
      required this.item,
      required this.context,
      required Domain? parent})
      : super(parent: parent) {
    this.index = index;
  }

  final dynamic item;
  final BuildContext context;

  @override
  bool match(dynamic exp) {
    if (parent != null && parent!.match(exp)) {
      return true;
    }
    return item != null &&
        exp is String &&
        ((RegExp('#\\(.+\\)', multiLine: true).hasMatch(exp) &&
                (exp.contains('\$loadingMoreItem') ||
                    exp.contains('\$loadingMoreIndex'))) ||
            exp == 'loadingMoreItem' ||
            exp == 'loadingMoreIndex' ||
            exp.startsWith("\$(loadingMoreItem") ||
            exp.startsWith("\$(loadingMoreIndex") ||
            exp.startsWith("#(\${loadingMoreIndex") ||
            exp.startsWith("#(\${loadingMoreItem") ||
            exp.startsWith('^(loadingMoreIndex)') ||
            exp.startsWith('^(loadingMoreItem)'));
  }

  @override
  dynamic bindValue(String exp) {
    if (parent != null && parent!.match(exp)) {
      return parent!.bindValue(exp);
    }

    if (exp == 'loadingMoreItem') {
      return item;
    } else if (exp == 'loadingMoreIndex') {
      return index;
    }
    // Carrying ”#(“ indicates value conversion to a string

    dynamic processed = exp.substring(2, exp.length - 1);
    if (processed.startsWith("\${")) {
      processed = processed.substring(2, processed.length - 1);
    }

    // ^(item)
    if (processed == 'loadingMoreItem') {
      return item;
    }
    // ^(index)
    else if (processed == 'loadingMoreIndex') {
      return index;
    }

    processed = processed.replaceAll('\$loadingMoreItem', '$item');
    processed = processed.replaceAll('\$loadingMoreIndex', '$index');

    return processed;
  }
}

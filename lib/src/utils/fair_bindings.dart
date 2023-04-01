// ignore_for_file: implementation_imports, unused_import

import 'dart:io';

import 'package:fair/fair.dart';
import 'package:fair/src/provider.dart';
import 'package:fair/src/bloc/flow.dart' as fair_flow;
import 'package:fair_gallery/src/flutter.generated.fair.dart';
import 'package:flutter/material.dart';
import 'package:fair/src/utils.dart';
import 'package:fair/src/type.dart';

class FairBindings {
  FairBindings._();

  static void init() {
    // widgetNames.clear();
    // widgetNames.addAll(flutterMapping);
    BindingProvider.specialBinding.clear();
    BindingProvider.specialBinding.addAll({
      'FairWidget': (props) => FairWidget(
            name: props['name'],
            path: props['path'],
            data: props['data'],
          ),
      'Color': (props) {
        var color = pa0(props);
        return color is String ? FairUtils.fromHex(color) : Color(color);
      },
      'VoidCallback': (props) => () {
            var func = props['invoke'];
            assert(func is Function, '$func should provide as Function');
            func();
          },
      'Navigator.pushNamed': (props) => () {
            // ignore p0 => context string
            var context = $(props);
            var route = FairApp.of(context)?.routeBuilder;
            if (route != null) {
              route(context, pa1(props), arguments: props['arguments']);
              return null;
            }
            return Navigator.of(context).pushNamed(
              pa1(props),
              arguments: props['arguments'],
            );
          },
      'Navigator.popAndPushNamed': (props) => () {
            var context = $(props);
            var route = FairApp.of(context)?.routeBuilder;
            if (route != null) {
              route(context, pa0(props), arguments: props['arguments']);
              return null;
            }
            return Navigator.of(context).popAndPushNamed(
              pa0(props),
              arguments: props['arguments'],
            );
          },
      'double.infinity': double.infinity,
      'File': (props) => File(props['pa'][0]),
      ...fair_flow.provider(),
    });
  }
}

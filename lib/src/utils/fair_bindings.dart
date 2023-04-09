// ignore_for_file: implementation_imports, unused_import

import 'dart:io';

import 'package:fair/fair.dart';
import 'package:fair/src/provider.dart';
import 'package:fair/src/bloc/flow.dart' as fair_flow;
import 'package:fair/src/bloc/common.dart' as fair_common;
import 'package:flutter/material.dart';
import 'package:fair/src/utils.dart';

class FairBindings {
  FairBindings._();

  static void init() {
    // widgetNames.clear();
    // widgetNames.addAll(flutterMapping);
    BindingProvider.specialBinding.clear();
    BindingProvider.specialBinding.addAll({
      'Duration': (props) {
        return Duration(
          days: props['days'] ?? 0,
          hours: props['hours'] ?? 0,
          minutes: props['minutes'] ?? 0,
          seconds: props['seconds'] ?? 0,
          milliseconds: props['milliseconds'] ?? 0,
          microseconds: props['microseconds'] ?? 0,
        );
      },
      ...fair_flow.provider(),
      ...fair_common.provider()
        ..remove('OutlineInputBorder')
        ..remove('BorderSide'),
    });
  }
}

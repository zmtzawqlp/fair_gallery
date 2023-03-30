import 'dart:async';

import 'package:fair/fair.dart';

mixin CompleterPlugin implements FairCommonPluginMixin {
  Future<dynamic> futureComplete(dynamic map) => request(
        map,
        (dynamic requestMap) async {
          final id = requestMap['futureId'];
          final value = requestMap['futureValue'];
          _completers.remove(id)?.complete(value);
          return null;
        },
      );

  static final Map<String, Completer> _completers = <String, Completer>{};

  static Completer create(String futureId) => _completers.putIfAbsent(
        futureId,
        () => Completer(),
      );
}

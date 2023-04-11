import 'package:fair/fair.dart';
import 'package:fair_gallery/src/plugin/debug.dart';
import 'package:fair_gallery/src/plugin/future.dart';
import 'package:fair_gallery/src/plugin/http.dart';
import 'package:fair_gallery/src/plugin/launch_url.dart';
import 'package:fair_gallery/src/plugin/navigator.dart';
import 'package:fair_gallery/src/plugin/photo.dart';
import 'package:fair_gallery/src/plugin/totast.dart';

class FairCommonPlugin extends IFairPlugin
    with
        NavigatorPlugin,
        PhotoPlugin,
        ToastPlugin,
        LaunchUrlPlugin,
        CompleterPlugin,
        HttpPlugin,
        FuturePlugin,
        DebugPlugin {
  factory FairCommonPlugin() => _fairCommonPlugin;
  FairCommonPlugin._();
  static final FairCommonPlugin _fairCommonPlugin = FairCommonPlugin._();
  @override
  Map<String, Function> getRegisterMethods() {
    return <String, Function>{
      'savePhoto': savePhoto,
      'navigate': navigate,
      'showToast': showToast,
      'launchUrl': launchUrl,
      'futureComplete': futureComplete,
      'http': http,
      'futureDelayed': futureDelayed,
      'jsPrint': jsPrint,
    };
  }
}

import 'package:fair_gallery/fair_gallery_route.dart';
import 'package:fair_gallery/fair_gallery_routes.dart';
import 'package:fair_gallery/src/widget/extended_fair_widget.dart';
import 'package:ff_annotation_route_library/ff_annotation_route_library.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

@FFRoute(
  name: 'MainPage',
  routeName: 'MainPage',
)
class MainPage extends StatelessWidget {
  MainPage({super.key}) {
    final List<String> list = <String>[];
    list.addAll(routeNames);

    list.remove(Routes.mainPage.name);

    list.remove(Routes.photoGalleryItem.name);

    list.remove(Routes.photoSwiper.name);

    routes.addAll(list
        .map<FFRouteSettings>((String name) => getRouteSettings(name: name)));
  }
  final List<FFRouteSettings> routes = <FFRouteSettings>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('FairGallery'),
        actions: <Widget>[
          ButtonTheme(
            minWidth: 0.0,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextButton(
              child: const Text(
                'Github',
                style: TextStyle(
                  decorationStyle: TextDecorationStyle.solid,
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                launchUrl(Uri.parse('https://github.com/wuba/Fair'));
              },
            ),
          ),
          StatefulBuilder(builder: (context, setState) {
            return ButtonTheme(
              padding: const EdgeInsets.only(right: 10.0),
              minWidth: 0.0,
              child: TextButton(
                child: Text(
                  ExtendedFairWidget.enable ? 'Fair模式' : 'Aot模式',
                  style: const TextStyle(
                    decorationStyle: TextDecorationStyle.solid,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    ExtendedFairWidget.enable = !ExtendedFairWidget.enable;
                  });
                },
              ),
            );
          })
        ],
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext c, int index) {
          final FFRouteSettings page = routes[index];
          return Container(
              margin: const EdgeInsets.all(20.0),
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${index + 1}.${page.routeName!}',
                    ),
                    Text(
                      page.description!,
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, routes[index].name!);
                },
              ));
        },
        itemCount: routes.length,
      ),
    );
  }
}

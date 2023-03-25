import 'package:fair_gallery/assets.dart';
import 'package:fair_gallery/fair_gallery_routes.dart';

final Map<String, String> _bundles = <String, String>{
  Routes.photoGalleryPage.name:
      Assets.assets_fair_lib_src_page_photo_gallery_fair_bin,
  Routes.photoGalleryPage1.name:
      Assets.assets_fair_lib_src_page_photo_gallery1_fair_bin,
  Routes.photoGalleryItem.name:
      Assets.assets_fair_lib_src_page_photo_gallery_item_fair_bin,
  Routes.photoSwiper.name:
      Assets.assets_fair_lib_src_page_photo_swiper_fair_bin,
};

extension FairBundleE on String {
  String? get fairBundle => _bundles[this];
}

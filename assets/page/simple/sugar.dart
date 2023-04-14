import 'package:fair/fair.dart';
import 'package:fair_gallery/assets.dart';
import 'package:fair_gallery/src/plugin/fair_common_plugin.dart';
import 'package:fair_gallery/src/widget/app_bar.dart';
import 'package:fair_gallery/src/widget/extended_fair_widget.dart';
import 'package:ff_annotation_route_library/ff_annotation_route_library.dart';
import 'package:flutter/material.dart';

@FairPatch()
@FFRoute(
  name: 'fair://SugarDemo',
  routeName: '语法糖例子',
  description:
      '语法糖例子(Sugar.ifEqual，Sugar.ifEqualBool，Sugar.ifRange，Sugar.map，Sugar.mapEach)',
  exts: <String, dynamic>{
    ExtendedFairWidget.tag: true,
    'group': '简单',
    'order': 1,
  },
)
class SugarDemo extends StatefulWidget {
  const SugarDemo({
    super.key,
    required this.fairProps,
  });

  final Map<String, dynamic> fairProps;

  @override
  State<SugarDemo> createState() => _SugarDemoState();
}

class _SugarDemoState extends State<SugarDemo> {
  @FairProps()
  var fairProps;
  final String _pageName = '#FairKey#';
  final _list = [];
  @override
  void initState() {
    super.initState();
    fairProps = widget.fairProps;
    onLoad();
  }

  void onLoad() {
    _list.add({'ddd': 1});
    FairCommonPlugin().jsPrint({
      'pageName': _pageName,
      'value': _list,
    });
    setState(() {});
  }

  String _getRouteName() {
    if (fairProps != null && fairProps['routeName'] != null) {
      return fairProps['routeName'];
    }
    return '';
  }

  // var _data = {
  //   "post_id": 122416471,
  //   "type": "multi-photo",
  //   "url": "https://tuchong.com/2969032/122416471/",
  //   "site_id": "2969032",
  //   "author_id": "2969032",
  //   "published_at": "2023-04-04 18:49:44",
  //   "passed_time": "04月04日",
  //   "excerpt": "「#西安写真」 「#婚纱写真」 「#情侣写真」",
  //   "favorites": 23,
  //   "comments": 0,
  //   "rewardable": true,
  //   "parent_comments": "0",
  //   "rewards": "0",
  //   "views": 1235,
  //   "collected": false,
  //   "shares": 0,
  //   "recommend": true,
  //   "delete": false,
  //   "update": false,
  //   "content": "#西安写真 #婚纱写真 #情侣写真",
  //   "title": "化繁为简 | 时尚婚纱画报",
  //   "image_count": 9,
  //   "images": [
  //     {
  //       "img_id": 1059076220,
  //       "img_id_str": "1059076220",
  //       "user_id": 2969032,
  //       "title": "224DDF23-206D-4E3D-ADC2-248B474E9706/L0/001",
  //       "excerpt": "",
  //       "width": 2587,
  //       "height": 3449,
  //       "description": ""
  //     },
  //     {
  //       "img_id": 1193621544,
  //       "img_id_str": "1193621544",
  //       "user_id": 2969032,
  //       "title": "6196696D-4902-4A30-9312-7C1F8214DFC9/L0/001",
  //       "excerpt": "",
  //       "width": 2587,
  //       "height": 3449,
  //       "description": ""
  //     },
  //     {
  //       "img_id": 902576405,
  //       "img_id_str": "902576405",
  //       "user_id": 2969032,
  //       "title": "7C5AB6E9-116A-4CFC-B677-B5B22469CA52/L0/001",
  //       "excerpt": "",
  //       "width": 2587,
  //       "height": 3449,
  //       "description": ""
  //     },
  //     {
  //       "img_id": 1138833621,
  //       "img_id_str": "1138833621",
  //       "user_id": 2969032,
  //       "title": "D860E3BF-17F0-4B54-AD6A-883C1BB8F345/L0/001",
  //       "excerpt": "",
  //       "width": 2299,
  //       "height": 3065,
  //       "description": ""
  //     },
  //     {
  //       "img_id": 769865746,
  //       "img_id_str": "769865746",
  //       "user_id": 2969032,
  //       "title": "76F28F2D-7B48-41E7-AECD-1DAF18B187C6/L0/001",
  //       "excerpt": "",
  //       "width": 2587,
  //       "height": 3449,
  //       "description": ""
  //     },
  //     {
  //       "img_id": 691943554,
  //       "img_id_str": "691943554",
  //       "user_id": 2969032,
  //       "title": "A6ECB9A3-2F43-4A00-9BCD-E54F0A279C58/L0/001",
  //       "excerpt": "",
  //       "width": 2587,
  //       "height": 3449,
  //       "description": ""
  //     },
  //     {
  //       "img_id": 915028135,
  //       "img_id_str": "915028135",
  //       "user_id": 2969032,
  //       "title": "17FD1B22-35F0-4F28-BFD8-752881C1C405/L0/001",
  //       "excerpt": "",
  //       "width": 2587,
  //       "height": 3449,
  //       "description": ""
  //     },
  //     {
  //       "img_id": 685193320,
  //       "img_id_str": "685193320",
  //       "user_id": 2969032,
  //       "title": "5AA04B11-B680-48FA-B884-C43DCC90282B/L0/001",
  //       "excerpt": "",
  //       "width": 2587,
  //       "height": 3449,
  //       "description": ""
  //     },
  //     {
  //       "img_id": 842807354,
  //       "img_id_str": "842807354",
  //       "user_id": 2969032,
  //       "title": "3C1B7086-35E6-48D4-B799-C48F4EC931E4/L0/001",
  //       "excerpt": "",
  //       "width": 2587,
  //       "height": 3449,
  //       "description": ""
  //     }
  //   ],
  //   "title_image": null,
  //   "tags": ["人像", "优雅", "团结", "城市", "孤立的", "寻找", "成就者", "手机", "抓拍", "时尚"],
  //   "event_tags": [],
  //   "favorite_list_prefix": [],
  //   "reward_list_prefix": [],
  //   "comment_list_prefix": [],
  //   "poi_data": {"id": "22535660174084830", "name": "今世集画报摄影"},
  //   "data_type": "post",
  //   "created_at": "",
  //   "sites": [],
  //   "site": {
  //     "site_id": 2969032,
  //     "type": "user",
  //     "name": "陈阿雪",
  //     "domain": null,
  //     "description": "微博：陈阿雪",
  //     "followers": 1475,
  //     "url": "https://tuchong.com/2969032/",
  //     "icon": "https://p3-tuchong.byteimg.com/obj/tuchong-avatar/ll_2969032_1",
  //     "is_bind_everphoto": true,
  //     "has_everphoto_note": true,
  //     "videos": 12,
  //     "verified": false,
  //     "verifications": 0,
  //     "verification_list": [],
  //     "is_following": false
  //   },
  //   "recom_type": "",
  //   "rqt_id": "7ac42bfd42ddd7f3701f506690e8a148",
  //   "is_favorite": false
  // };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommomAppBar(
        title: _getRouteName(),
        asset: Assets.assets_page_simple_sugar_dart,
      ),
      body: Column(
        children: Sugar.map<Widget, dynamic>(_list, builder: (item) {
          return Text('$item');
        }),
      ),
    );
  }
}

GLOBAL['#FairKey#']=(function(__initProps__){const __global__=this;return runCallback(function(__mod__){with(__mod__.imports){function _PhotoGalleryPage1State(){const inner=_PhotoGalleryPage1State.__inner__;if(this==__global__){return new _PhotoGalleryPage1State({__args__:arguments});}else{const args=arguments.length>0?arguments[0].__args__||arguments:[];inner.apply(this,args);_PhotoGalleryPage1State.prototype.ctor.apply(this,args);return this;}}_PhotoGalleryPage1State.__inner__=function inner(){this._repository=null;this.lastRefreshTime=DateTime.now();this.pageIndex=0;this._itemIds=[];};_PhotoGalleryPage1State.prototype={initState:function initState(){const __thiz__=this;with(__thiz__){onLoad();}},onLoad:function onLoad(){const __thiz__=this;with(__thiz__){_repository=LoadingMoreRepository();}},dispose:function dispose(){const __thiz__=this;with(__thiz__){onUnload();}},onUnload:function onUnload(){const __thiz__=this;with(__thiz__){}},_onRefresh:function _onRefresh(){const __thiz__=this;with(__thiz__){return _repository.refresh();}},_onLoadData:function _onLoadData(input){const __thiz__=this;const __arg_ctx__={input,};with(__thiz__){with(__arg_ctx__){let futureId=input.__op_idx__('futureId');let isloadMoreAction=input.__op_idx__('isloadMoreAction');let url='';if(!isloadMoreAction){_itemIds.clear();pageIndex=0;}if(_itemIds.isEmpty){url='https://api.tuchong.com/feed-app';}else{let lastId=_itemIds.__op_idx__(_itemIds.length-1);url='https://api.tuchong.com/feed-app?post_id='+lastId.toString()+'&page='+pageIndex.toString()+'&type=loadmore';}FairCommonPlugin().http(convertObjectLiteralToSetOrMap({['method']:'GET',['url']:url,['pageName']:'PhotoGalleryPage',['callback']:function dummy(result){if(result!=null){let statusCode=result.__op_idx__('statusCode');let list=[];if(statusCode==200){let map=result.__op_idx__('json');if(map!=null){let feedList=map.__op_idx__('feedList');for(let i=0;i<feedList.length;i++){let item=feedList.__op_idx__(i);let postId=item.__op_idx__('post_id');if(!_itemIds.contains(item.__op_idx__(postId))){list.add(item);_itemIds.add(postId);}}}pageIndex=pageIndex+1;}if(!isloadMoreAction){lastRefreshTime=DateTime.now();}FairCommonPlugin().futureComplete(convertObjectLiteralToSetOrMap({['pageName']:'PhotoGalleryPage',['futureId']:futureId,['futureValue']:convertObjectLiteralToSetOrMap({['pageIndex']:pageIndex,['statusCode']:statusCode,['list']:list,}),}));}},}));}}},_getAvatarUrl:function _getAvatarUrl(item){const __thiz__=this;const __arg_ctx__={item,};with(__thiz__){with(__arg_ctx__){let site=item.__op_idx__('site');if(site!=null&&site.__op_idx__('icon')!=null){return site.__op_idx__('icon');}return'';}}},_getSiteTitle:function _getSiteTitle(item){const __thiz__=this;const __arg_ctx__={item,};with(__thiz__){with(__arg_ctx__){let site=item.__op_idx__('site');if(site!=null&&site.__op_idx__('name')!=null){return site.__op_idx__('name');}return'';}}},_getSiteDescription:function _getSiteDescription(item){const __thiz__=this;const __arg_ctx__={item,};with(__thiz__){with(__arg_ctx__){let site=item.__op_idx__('site');if(site!=null&&site.__op_idx__('description')!=null){return site.__op_idx__('description');}return'';}}},_getContent:function _getContent(item){const __thiz__=this;const __arg_ctx__={item,};with(__thiz__){with(__arg_ctx__){let content='[love]Fair是为Flutter设计的动态化框架，通过Fair Compiler工具对原生Dart源文件的自动转化，使项目获得动态更新Widget的能力。[sun_glasses]';if(item!=null){if(item.__op_idx__('content')!=null){return item.__op_idx__('content')+content;}else if(item.__op_idx__('excerpt')!=null){return item.__op_idx__('excerpt')+content;}else{return _getSiteTitle(item)+content;}}return content;}}},_onSpecialTextTap:function _onSpecialTextTap(parameter){const __thiz__=this;const __arg_ctx__={parameter,};with(__thiz__){with(__arg_ctx__){let parameterString=parameter.toString();let url='';if(parameterString.startsWith('#')){url='https://github.com/wuba/Fair';}else if(parameterString.startsWith('@')){url='mailto:zmtzawqlp@live.com';}if(url.isNotEmpty){FairCommonPlugin().launchUrl(convertObjectLiteralToSetOrMap({['pageName']:'PhotoGalleryItem',['url']:url,}));}}}},_onTextMoreTap:function _onTextMoreTap(){const __thiz__=this;with(__thiz__){FairCommonPlugin().launchUrl(convertObjectLiteralToSetOrMap({['pageName']:'PhotoGalleryItem',['url']:'https://github.com/wuba/Fair',}));}},_onImageTap:function _onImageTap(input){const __thiz__=this;const __arg_ctx__={input,};with(__thiz__){with(__arg_ctx__){let index=input.__op_idx__(0);let item=input.__op_idx__(1);FairCommonPlugin().navigate(convertObjectLiteralToSetOrMap({['pageName']:'PhotoGalleryItem',['callback']:function dummy(result){},['routeName']:'PhotoSwiper',['method']:'pushNamed',['arguments']:convertObjectLiteralToSetOrMap({['fairProps']:convertObjectLiteralToSetOrMap({['index']:index,['images']:item.__op_idx__('images'),}),}),}));}}},_getImageUrl:function _getImageUrl(index,item){const __thiz__=this;const __arg_ctx__={index,item,};with(__thiz__){with(__arg_ctx__){let images=item.__op_idx__('images');if(index>=images.length){return'';}let image=images.__op_idx__(index);return'https://photo.tuchong.com/'+image.__op_idx__('user_id').toString()+'/f/'+image.__op_idx__('img_id').toString()+'.jpg';}}},_getImageWidthOrHeight:function _getImageWidthOrHeight(index,returnWidth,item){const __thiz__=this;const __arg_ctx__={index,returnWidth,item,};with(__thiz__){with(__arg_ctx__){let images=item.__op_idx__('images');if(index>=images.length){return 0.0;}let num300=150.0;let num400=200.0;let height=150.0;let width=200.0;let image=images.__op_idx__(index);height=image.__op_idx__('height')*1.0;width=image.__op_idx__('width')*1.0;let aspectRatio43=4.0/3.0;let aspectRatio34=3.0/4.0;let n=height/width;if(n>=aspectRatio43){width=num300;height=num400;}else if(aspectRatio43>n&&n>aspectRatio34){let maxValue=height;if(width>height){maxValue=width;}height=num400*height/maxValue;width=num400*width/maxValue;}else if(n<=aspectRatio34){width=num400;height=num300;}if(returnWidth==1){return width;}else{return height;}}}},_getImageUrls:function _getImageUrls(maxCount,item){const __thiz__=this;const __arg_ctx__={maxCount,item,};with(__thiz__){with(__arg_ctx__){let images=item.__op_idx__('images');let urls=[];let length=images.length;if(maxCount>length){maxCount=length;}for(let i=0;i<maxCount;i++){urls.add(_getImageUrl(i,item));}return urls;}}},};_PhotoGalleryPage1State.prototype.ctor=function(){};;return _PhotoGalleryPage1State();}},[]);})(convertObjectLiteralToSetOrMap(JSON.parse('#FairProps#')));
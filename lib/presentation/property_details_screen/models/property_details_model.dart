import 'package:get/get.dart';import 'chipviewlayout_item_model.dart';import 'layout20_item_model.dart';import 'package:realstate/data/models/selectionPopupModel/selection_popup_model.dart';import 'layout21_item_model.dart';import 'listshape4_item_model.dart';import 'gridshape6_item_model.dart';class PropertyDetailsModel {RxList<ChipviewlayoutItemModel> chipviewlayoutItemList = RxList.generate(2,(index) =>ChipviewlayoutItemModel());

RxList<Layout20ItemModel> layout20ItemList = RxList.generate(3,(index) => Layout20ItemModel());

RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)].obs;

RxList<Layout21ItemModel> layout21ItemList = RxList.generate(3,(index) => Layout21ItemModel());

RxList<Listshape4ItemModel> listshape4ItemList = RxList.generate(2,(index) => Listshape4ItemModel());

RxList<Gridshape6ItemModel> gridshape6ItemList = RxList.generate(2,(index) => Gridshape6ItemModel());

 }

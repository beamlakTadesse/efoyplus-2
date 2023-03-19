import 'package:realstate/core/app_export.dart';import 'package:realstate/presentation/view_on_map_screen/models/view_on_map_model.dart';class ViewOnMapController extends GetxController {Rx<ViewOnMapModel> viewOnMapModelObj = ViewOnMapModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; viewOnMapModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); viewOnMapModelObj.value.dropdownItemList.refresh(); } 
 }

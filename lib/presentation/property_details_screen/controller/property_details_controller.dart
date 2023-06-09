import 'package:realstate/core/app_export.dart';import 'package:realstate/presentation/property_details_screen/models/property_details_model.dart';class PropertyDetailsController extends GetxController {Rx<PropertyDetailsModel> propertyDetailsModelObj = PropertyDetailsModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; propertyDetailsModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); propertyDetailsModelObj.value.dropdownItemList.refresh(); } 
 }

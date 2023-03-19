import 'controller/location_fill_controller.dart';import 'dart:async';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:realstate/core/app_export.dart';import 'package:realstate/widgets/custom_button.dart';import 'package:realstate/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class LocationFillScreen extends GetWidget<LocationFillController> {Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 11, right: 24, bottom: 11), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(top: 13), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomIconButton(height: 50, width: 50, variant: IconButtonVariant.FillGray100, shape: IconButtonShape.CircleBorder25, padding: IconButtonPadding.PaddingAll16, onTap: () {onTapBtnArrowleft();}, child: CustomImageView(svgPath: ImageConstant.imgArrowleft)), CustomButton(height: getVerticalSize(38), width: getHorizontalSize(66), text: "lbl_skip".tr, margin: getMargin(top: 7, bottom: 5), variant: ButtonVariant.FillGray100, shape: ButtonShape.CircleBorder19, padding: ButtonPadding.PaddingAll10, fontStyle: ButtonFontStyle.MontserratRegular12Bluegray800, onTap: onTapSkip)])), Padding(padding: getPadding(top: 56), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_add_your".tr, style: TextStyle(color: ColorConstant.blueGray80001, fontSize: getFontSize(25), fontFamily: 'Raleway', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.75))), TextSpan(text: "lbl_location5".tr, style: TextStyle(color: ColorConstant.blueGray80001, fontSize: getFontSize(25), fontFamily: 'Raleway', fontWeight: FontWeight.w800, letterSpacing: getHorizontalSize(0.75)))]), textAlign: TextAlign.left)), Padding(padding: getPadding(top: 28), child: Text("msg_you_can_edit_th".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRegular12Bluegray600.copyWith(letterSpacing: getHorizontalSize(0.36)))), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(top: 51), shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25), child: Container(height: getVerticalSize(300), width: getHorizontalSize(327), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder25), child: Stack(alignment: Alignment.bottomCenter, children: [Container(height: getVerticalSize(300), width: getHorizontalSize(327), child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)), Align(alignment: Alignment.bottomCenter, child: Container(padding: getPadding(left: 121, top: 16, right: 121, bottom: 16), decoration: AppDecoration.fillWhiteA7007f, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 1), child: Text("lbl_select_on_map2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRegular12Bluegray80001.copyWith(letterSpacing: getHorizontalSize(0.36))))]))), CustomImageView(svgPath: ImageConstant.imgLightbulbOrange300, height: getVerticalSize(51), width: getHorizontalSize(34), alignment: Alignment.topLeft, margin: getMargin(left: 122, top: 87))]))), Container(margin: getMargin(top: 15), padding: getPadding(left: 16, top: 25, right: 16, bottom: 25), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgLocation6, height: getSize(20), width: getSize(20)), Padding(padding: getPadding(left: 10, top: 2, bottom: 2), child: Text("lbl_west_jakarta".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewaySemiBold12.copyWith(letterSpacing: getHorizontalSize(0.36)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgArrowdownIndigo200, height: getSize(20), width: getSize(20))])), CustomImageView(imagePath: ImageConstant.imageNotFound, height: getVerticalSize(1), width: getHorizontalSize(100), alignment: Alignment.center, margin: getMargin(top: 67))])), bottomNavigationBar: CustomButton(height: getVerticalSize(70), text: "lbl_next".tr, margin: getMargin(left: 25, right: 23, bottom: 24)))); } 
onTapBtnArrowleft() { Get.back(); } 
onTapSkip() { Get.toNamed(AppRoutes.homeContainerScreen); } 
 }

import 'controller/add_location_controller.dart';import 'dart:async';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:realstate/core/app_export.dart';import 'package:realstate/widgets/app_bar/appbar_iconbutton_2.dart';import 'package:realstate/widgets/app_bar/appbar_title.dart';import 'package:realstate/widgets/app_bar/custom_app_bar.dart';import 'package:realstate/widgets/custom_button.dart';import 'package:realstate/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class AddLocationScreen extends GetWidget<AddLocationController> {Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(56), leadingWidth: 74, leading: AppbarIconbutton2(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 3, bottom: 3), onTap: onTapArrowleft8), centerTitle: true, title: AppbarTitle(text: "lbl_add_listing".tr)), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 11, right: 24, bottom: 11), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(top: 41), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_where_is_the".tr, style: TextStyle(color: ColorConstant.blueGray80001, fontSize: getFontSize(25), fontFamily: 'Raleway', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.75))), TextSpan(text: "lbl_location4".tr, style: TextStyle(color: ColorConstant.blueGray80001, fontSize: getFontSize(25), fontFamily: 'Raleway', fontWeight: FontWeight.w800, letterSpacing: getHorizontalSize(0.75)))]), textAlign: TextAlign.left)), Padding(padding: getPadding(top: 40, right: 2), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomIconButton(height: 50, width: 50, variant: IconButtonVariant.OutlineGray100_1, shape: IconButtonShape.CircleBorder25, padding: IconButtonPadding.PaddingAll16, child: CustomImageView(svgPath: ImageConstant.imgLocation50x50)), Padding(padding: getPadding(left: 15, top: 7, bottom: 5), child: Text("msg_jl_cisangkuy".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRalewayRegular12.copyWith(letterSpacing: getHorizontalSize(0.36))))])), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(top: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25), child: Container(height: getVerticalSize(356), width: getHorizontalSize(327), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder25), child: Stack(alignment: Alignment.bottomCenter, children: [Container(height: getVerticalSize(356), width: getHorizontalSize(327), child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)), Align(alignment: Alignment.bottomCenter, child: Container(padding: getPadding(left: 109, top: 16, right: 109, bottom: 16), decoration: AppDecoration.fillWhiteA7007f, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 1), child: Text("msg_select_on_the_m".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRegular12Bluegray80001.copyWith(letterSpacing: getHorizontalSize(0.36))))]))), CustomImageView(svgPath: ImageConstant.imgLocation51x34, height: getVerticalSize(51), width: getHorizontalSize(34), alignment: Alignment.topCenter, margin: getMargin(top: 79))]))), CustomImageView(imagePath: ImageConstant.imageNotFound, height: getVerticalSize(1), width: getHorizontalSize(100), alignment: Alignment.center, margin: getMargin(top: 82))])), bottomNavigationBar: CustomButton(height: getVerticalSize(70), text: "lbl_next".tr, margin: getMargin(left: 25, right: 23, bottom: 24), onTap: onTapNext))); } 
onTapNext() { Get.toNamed(AppRoutes.addPhotosScreen); } 
onTapArrowleft8() { Get.back(); } 
 }
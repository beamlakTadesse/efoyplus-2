import 'controller/product_tour_one_controller.dart';import 'package:flutter/material.dart';import 'package:realstate/core/app_export.dart';import 'package:realstate/widgets/custom_button.dart';class ProductTourOneScreen extends GetWidget<ProductTourOneController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 24, top: 24, right: 44), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(svgPath: ImageConstant.imgVectorIndigoA400, height: getVerticalSize(64), width: getHorizontalSize(87)), CustomButton(height: getVerticalSize(38), width: getHorizontalSize(66), text: "lbl_skip".tr, margin: getMargin(top: 13, bottom: 13), variant: ButtonVariant.FillGray100, shape: ButtonShape.CircleBorder19, padding: ButtonPadding.PaddingAll10, fontStyle: ButtonFontStyle.MontserratRegular12Bluegray800, onTap: onTapSkip)])), Container(width: getHorizontalSize(289), margin: getMargin(left: 24, top: 40, right: 62), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_find_best_place2".tr, style: TextStyle(color: ColorConstant.blueGray80001, fontSize: getFontSize(25), fontFamily: 'Raleway', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.75))), TextSpan(text: "lbl_good_price".tr, style: TextStyle(color: ColorConstant.blueGray80001, fontSize: getFontSize(25), fontFamily: 'Raleway', fontWeight: FontWeight.w800, letterSpacing: getHorizontalSize(0.75))), TextSpan(text: "lbl49".tr, style: TextStyle(color: ColorConstant.blueGray80001, fontSize: getFontSize(25), fontFamily: 'Raleway', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.75)))]), textAlign: TextAlign.left)), Container(width: getHorizontalSize(238), margin: getMargin(left: 24, top: 21), child: Text("msg_lorem_ipsum_dol8".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRalewayRegular12.copyWith(letterSpacing: getHorizontalSize(0.36)))), Container(height: getVerticalSize(520), width: double.maxFinite, margin: getMargin(top: 28), child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgBackgroundillustration520x3751, height: getVerticalSize(520), width: getHorizontalSize(375), alignment: Alignment.center), CustomButton(height: getVerticalSize(70), width: getHorizontalSize(230), text: "lbl_next".tr, margin: getMargin(bottom: 24), variant: ButtonVariant.FillIndigoA200, onTap: onTapNext, alignment: Alignment.bottomCenter)]))])))); } 
onTapSkip() { Get.toNamed(AppRoutes.loginScreen); } 
onTapNext() { Get.toNamed(AppRoutes.productTourTwoScreen); } 
 }

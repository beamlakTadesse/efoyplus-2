import '../controller/top_agents_controller.dart';
import '../models/datalist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:realstate/core/app_export.dart';

// ignore: must_be_immutable
class Datalist1ItemWidget extends StatelessWidget {
  Datalist1ItemWidget(this.datalist1ItemModelObj, {this.onTapColumntext});

  Datalist1ItemModel datalist1ItemModelObj;

  var controller = Get.find<TopAgentsController>();

  VoidCallback? onTapColumntext;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumntext!();
      },
      child: Container(
        padding: getPadding(
          left: 16,
          top: 14,
          right: 16,
          bottom: 14,
        ),
        decoration: AppDecoration.fillGray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: getMargin(
                  top: 2,
                ),
                padding: getPadding(
                  left: 8,
                  top: 4,
                  right: 8,
                  bottom: 4,
                ),
                decoration: AppDecoration.fillOrange300.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl8".tr,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                8,
                              ),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              letterSpacing: getHorizontalSize(
                                0.36,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: "lbl_12".tr,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              letterSpacing: getHorizontalSize(
                                0.36,
                              ),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgShape100x1001,
              height: getSize(
                100,
              ),
              width: getSize(
                100,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  50,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 12,
              ),
              child: Obx(
                () => Text(
                  datalist1ItemModelObj.nameTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayBold14.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.42,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgStar9x9,
                    height: getSize(
                      16,
                    ),
                    width: getSize(
                      16,
                    ),
                    margin: getMargin(
                      top: 1,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                      top: 1,
                    ),
                    child: Obx(
                      () => Text(
                        datalist1ItemModelObj.ratingTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratBold12,
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgHome,
                    height: getSize(
                      16,
                    ),
                    width: getSize(
                      16,
                    ),
                    margin: getMargin(
                      left: 8,
                      bottom: 1,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_112".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratBold12,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 2,
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_sold".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRegular12Bluegray600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import '../controller/top_locations_location_detail_controller.dart';
import '../models/listshape_item_model.dart';
import 'package:flutter/material.dart';
import 'package:realstate/core/app_export.dart';
import 'package:realstate/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListshapeItemWidget extends StatelessWidget {
  ListshapeItemWidget(this.listshapeItemModelObj);

  ListshapeItemModel listshapeItemModelObj;

  var controller = Get.find<TopLocationsLocationDetailController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 8,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        children: [
          Container(
            height: getVerticalSize(
              140,
            ),
            width: getHorizontalSize(
              168,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShape140x1681,
                  height: getVerticalSize(
                    140,
                  ),
                  width: getHorizontalSize(
                    168,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      18,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 25,
                          width: 25,
                          variant: IconButtonVariant.FillWhiteA700c6,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgLocationRedA200,
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 74,
                          ),
                          padding: getPadding(
                            left: 7,
                            top: 5,
                            right: 7,
                            bottom: 5,
                          ),
                          decoration: AppDecoration.fillBluegray700af.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgButtoncategory1,
                                height: getVerticalSize(
                                  13,
                                ),
                                width: getHorizontalSize(
                                  11,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 6,
                                  top: 1,
                                  right: 17,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "lbl_house".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayMedium8.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.24,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 9,
              bottom: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    89,
                  ),
                  child: Text(
                    "msg_flower_heaven_h".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayBold12Bluegray80001.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.36,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 9,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgStar1,
                        height: getSize(
                          9,
                        ),
                        width: getSize(
                          9,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                        ),
                        child: Text(
                          "lbl_4_72".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratBold8,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgLocationDeepOrangeA200,
                        height: getSize(
                          9,
                        ),
                        width: getSize(
                          9,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                        ),
                        child: Text(
                          "lbl_bali_indonesia".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRegular8,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 29,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "lbl_370".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratSemiBold16.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.48,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 7,
                          bottom: 2,
                        ),
                        child: Text(
                          "lbl_month".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratMedium8.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

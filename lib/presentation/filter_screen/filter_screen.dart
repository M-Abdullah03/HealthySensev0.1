import 'controller/filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/custom_button.dart';

class FilterScreen extends GetWidget<FilterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 519,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL53,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              5.00,
                            ),
                            width: getHorizontalSize(
                              60.00,
                            ),
                            margin: getMargin(
                              left: 175,
                              top: 7,
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray101,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  2.54,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 33,
                              top: 19,
                              right: 33,
                            ),
                            child: Text(
                              "lbl_filter".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanMedium25.copyWith(
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              345.00,
                            ),
                            margin: getMargin(
                              left: 33,
                              top: 28,
                              right: 33,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.bluegray102,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 34,
                            top: 32,
                            right: 34,
                          ),
                          child: Text(
                            "lbl_speciality".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayBold20Black900.copyWith(
                              letterSpacing: 0.40,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 33,
                              top: 22,
                              right: 28,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  padding: getPadding(
                                    left: 20,
                                    top: 10,
                                    right: 20,
                                    bottom: 10,
                                  ),
                                  decoration:
                                      AppDecoration.txtFillBlue801.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder19,
                                  ),
                                  child: Text(
                                    "lbl_all".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanMedium15WhiteA700
                                        .copyWith(
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 11,
                                  ),
                                  padding: getPadding(
                                    left: 12,
                                    top: 10,
                                    right: 12,
                                    bottom: 10,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineBlue801.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder19,
                                  ),
                                  child: Text(
                                    "lbl_general".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanMedium15Blue801
                                        .copyWith(
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 11,
                                  ),
                                  padding: getPadding(
                                    left: 13,
                                    top: 10,
                                    right: 13,
                                    bottom: 10,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineBlue8011.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder19,
                                  ),
                                  child: Text(
                                    "lbl_dentist".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanMedium15Blue801
                                        .copyWith(
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 11,
                                  ),
                                  padding: getPadding(
                                    left: 10,
                                    top: 9,
                                    right: 10,
                                    bottom: 9,
                                  ),
                                  decoration:
                                      AppDecoration.txtOutlineBlue801.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder19,
                                  ),
                                  child: Text(
                                    "lbl_therapist".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRobotoRomanMedium15Blue801
                                        .copyWith(
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 34,
                            top: 34,
                            right: 34,
                          ),
                          child: Text(
                            "lbl_rating".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayBold20Black900.copyWith(
                              letterSpacing: 0.40,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 20,
                              top: 17,
                              right: 21,
                              bottom: 49,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomButton(
                                  width: 56,
                                  text: "lbl_all".tr,
                                  shape: ButtonShape.CircleBorder21,
                                  padding: ButtonPadding.PaddingAll11,
                                  fontStyle:
                                      ButtonFontStyle.RobotoRomanMedium13,
                                  prefixWidget: Container(
                                    margin: getMargin(
                                      right: 4,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgStar,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 9,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlue8012.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder21,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 12,
                                          bottom: 16,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgStar13x13,
                                          height: getVerticalSize(
                                            13.00,
                                          ),
                                          width: getHorizontalSize(
                                            12.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 10,
                                          right: 16,
                                          bottom: 13,
                                        ),
                                        child: Text(
                                          "lbl_1".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRomanMedium15Blue801
                                              .copyWith(
                                            letterSpacing: 0.30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 9,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlue8012.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder21,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 12,
                                          bottom: 16,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgStar13x13,
                                          height: getVerticalSize(
                                            13.00,
                                          ),
                                          width: getHorizontalSize(
                                            12.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 10,
                                          right: 14,
                                          bottom: 13,
                                        ),
                                        child: Text(
                                          "lbl_2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRomanMedium15Blue801
                                              .copyWith(
                                            letterSpacing: 0.30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 9,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlue8012.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder21,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 12,
                                          bottom: 16,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgStar13x13,
                                          height: getVerticalSize(
                                            13.00,
                                          ),
                                          width: getHorizontalSize(
                                            12.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 10,
                                          right: 14,
                                          bottom: 13,
                                        ),
                                        child: Text(
                                          "lbl_3".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRomanMedium15Blue801
                                              .copyWith(
                                            letterSpacing: 0.30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 9,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlue8012.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder21,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 12,
                                          bottom: 16,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgStar13x13,
                                          height: getVerticalSize(
                                            13.00,
                                          ),
                                          width: getHorizontalSize(
                                            12.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 10,
                                          right: 14,
                                          bottom: 13,
                                        ),
                                        child: Text(
                                          "lbl_4".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRomanMedium15Blue801
                                              .copyWith(
                                            letterSpacing: 0.30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 9,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlue8012.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder21,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 12,
                                          bottom: 16,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgStar13x13,
                                          height: getVerticalSize(
                                            13.00,
                                          ),
                                          width: getHorizontalSize(
                                            12.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 10,
                                          right: 14,
                                          bottom: 13,
                                        ),
                                        child: Text(
                                          "lbl_5".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRomanMedium15Blue801
                                              .copyWith(
                                            letterSpacing: 0.30,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

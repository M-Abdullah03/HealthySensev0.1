import '../controller/labs_controller.dart';
import '../models/labs1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/custom_button.dart';

// ignore: must_be_immutable
class Labs1ItemWidget extends StatelessWidget {
  Labs1ItemWidget(this.labs1ItemModelObj,
      {this.onTapViewprofile, this.onTapBookappointmentOne});

  Labs1ItemModel labs1ItemModelObj;

  var controller = Get.find<LabsController>();

  VoidCallback? onTapViewprofile;

  VoidCallback? onTapBookappointmentOne;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.outlineGray400191.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 18,
                  top: 16,
                  right: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            26.50,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgEllipse41,
                          height: getSize(
                            53.00,
                          ),
                          width: getSize(
                            53.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 13,
                        bottom: 1,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 1,
                              right: 10,
                            ),
                            child: Text(
                              "lbl_metropole_lab".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanBold15,
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 2,
                              top: 2,
                              right: 10,
                            ),
                            padding: getPadding(
                              left: 5,
                              top: 1,
                              right: 5,
                              bottom: 1,
                            ),
                            decoration:
                                AppDecoration.txtFillBluegray101.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder2,
                            ),
                            child: Text(
                              "lbl_6_69_km".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular10,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Text(
                              "msg_radiology_lab_pathology".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 18,
                  top: 21,
                  right: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            71.00,
                          ),
                          margin: getMargin(
                            top: 8,
                            bottom: 3,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_under_15_min".tr,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl_wait_time".tr,
                                  style: TextStyle(
                                    color: ColorConstant.gray8009b,
                                    fontSize: getFontSize(
                                      10,
                                    ),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            33.00,
                          ),
                          width: getHorizontalSize(
                            1.00,
                          ),
                          margin: getMargin(
                            left: 26,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray70038,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: getHorizontalSize(
                        78.00,
                      ),
                      margin: getMargin(
                        top: 7,
                        bottom: 3,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_100_4".tr,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "msg_satisfied_patients".tr,
                              style: TextStyle(
                                color: ColorConstant.gray8009b,
                                fontSize: getFontSize(
                                  10,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: getHorizontalSize(
                  271.00,
                ),
                margin: getMargin(
                  left: 9,
                  top: 20,
                  right: 10,
                ),
                decoration: AppDecoration.outlineGray70035.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 9,
                        top: 6,
                        right: 10,
                      ),
                      child: Text(
                        "msg_metropole_laboratories".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanRegular14,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 10,
                          top: 6,
                          right: 5,
                          bottom: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: getSize(
                                      7.00,
                                    ),
                                    width: getSize(
                                      7.00,
                                    ),
                                    margin: getMargin(
                                      top: 2,
                                      bottom: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.green700,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          3.50,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 3,
                                    ),
                                    child: Text(
                                      "msg_available_tomorrow".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRobotoRomanRegular10Green700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "lbl_fee_n_a".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular10,
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
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 9,
                  top: 17,
                  right: 9,
                  bottom: 11,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomButton(
                      width: 186,
                      text: "lbl_view_profile".tr,
                      variant: ButtonVariant.OutlineBlack900,
                      shape: ButtonShape.RoundedBorder5,
                      padding: ButtonPadding.PaddingAll11,
                      fontStyle: ButtonFontStyle.RobotoRomanRegular14,
                      onTap: onTapViewprofile,
                    ),
                    CustomButton(
                      width: 186,
                      text: "msg_book_appointment".tr,
                      shape: ButtonShape.RoundedBorder5,
                      fontStyle: ButtonFontStyle.RobotoRomanRegular14WhiteA700,
                      onTap: onTapBookappointmentOne,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

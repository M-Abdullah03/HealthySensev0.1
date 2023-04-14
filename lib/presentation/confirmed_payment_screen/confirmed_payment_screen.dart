import 'controller/confirmed_payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';
import 'package:healthysense/widgets/custom_button.dart';
import 'package:healthysense/widgets/custom_icon_button.dart';

class ConfirmedPaymentScreen extends GetWidget<ConfirmedPaymentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(59.00),
                centerTitle: true,
                title: Container(
                    decoration: AppDecoration.gradientIndigoA700Gray800,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AppbarImage(
                              height: getVerticalSize(20.00),
                              width: getHorizontalSize(19.00),
                              svgPath: ImageConstant.imgArrowleft,
                              margin: getMargin(left: 22, top: 15, bottom: 24),
                              onTap: onTapArrowleft11),
                          AppbarSubtitle1(
                              text: "lbl_payment".tr,
                              margin:
                                  getMargin(left: 126, top: 17, bottom: 17)),
                          AppbarImage(
                              height: getVerticalSize(21.00),
                              width: getHorizontalSize(18.00),
                              svgPath: ImageConstant.imgNotification,
                              margin: getMargin(
                                  left: 111, top: 17, right: 33, bottom: 21),
                              onTap: onTapNotification8)
                        ])),
                styleType: Style.bgGradientIndigoA700Gray800),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 22, top: 27, right: 18),
                              decoration: AppDecoration.outlineBlack9003f16
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 11, top: 28, bottom: 31),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CommonImageView(
                                                  imagePath: ImageConstant
                                                      .imgVector84x84,
                                                  height: getSize(89.00),
                                                  width: getSize(89.00)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15,
                                                      top: 10,
                                                      bottom: 10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                right: 10),
                                                            child: Text(
                                                                "lbl_dr_amna_irum"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoBold15)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11,
                                                                right: 10),
                                                            child: Text(
                                                                "lbl_dermatologist"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayMedium12Bluegray400
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.24))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 8),
                                                            child: Text(
                                                                "msg_nuces_in_fast_isb"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayMedium12Bluegray400
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.24)))
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            top: 39, right: 22, bottom: 93),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgStar18,
                                                  height:
                                                      getVerticalSize(15.00),
                                                  width:
                                                      getHorizontalSize(13.00)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 2,
                                                      top: 1,
                                                      bottom: 1),
                                                  child: Text("lbl_4_8".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.24)))
                                            ]))
                                  ]))),
                      Container(
                          height: getVerticalSize(498.00),
                          width: size.width,
                          margin: getMargin(top: 13),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: CommonImageView(
                                    imagePath: ImageConstant.img44lightreview,
                                    height: getVerticalSize(498.00),
                                    width: getHorizontalSize(414.00))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 39,
                                        top: 40,
                                        right: 37,
                                        bottom: 40),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(24.00),
                                              width: getHorizontalSize(101.00),
                                              margin: getMargin(left: 10),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    24.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    101.00),
                                                            margin: getMargin(
                                                                top: 1),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .whiteA700))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 3,
                                                                right: 3),
                                                            child: Text(
                                                                "lbl_clinic_session2"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayRomanMedium15)))
                                                  ])),
                                          Container(
                                              margin:
                                                  getMargin(left: 10, top: 108),
                                              padding:
                                                  getPadding(top: 3, bottom: 3),
                                              decoration: AppDecoration
                                                  .txtFillWhiteA700,
                                              child: Text("lbl_1000rs".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRalewayRomanSemiBold15)),
                                          Container(
                                              margin:
                                                  getMargin(left: 10, top: 10),
                                              padding:
                                                  getPadding(top: 3, bottom: 3),
                                              decoration: AppDecoration
                                                  .txtFillWhiteA700,
                                              child: Text("lbl_1000_1".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRalewayRomanSemiBold15)),
                                          CustomIconButton(
                                              height: 54,
                                              width: 54,
                                              margin: getMargin(
                                                  left: 4,
                                                  top: 125,
                                                  right: 284),
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgComputer))
                                        ])))
                          ])),
                      CustomButton(
                          width: 354,
                          text: "lbl_confirm_payment2".tr,
                          margin: getMargin(
                              left: 22, top: 27, right: 22, bottom: 5),
                          onTap: onTapConfirmpaymentOne,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapConfirmpaymentOne() {
    Get.defaultDialog(
        onConfirm: () => Get.toNamed(AppRoutes.donePaymentScreen),
        title: "Confirm!",
        middleText: "Are You Sure?");
  }

  onTapArrowleft11() {
    Get.back();
  }

  onTapNotification8() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }
}

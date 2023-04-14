import 'controller/confirmed_payment_lab_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';
import 'package:healthysense/widgets/custom_button.dart';
import 'package:healthysense/widgets/custom_icon_button.dart';

class ConfirmedPaymentLabScreen
    extends GetWidget<ConfirmedPaymentLabController> {
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AppbarImage(
                              height: getVerticalSize(20.00),
                              width: getHorizontalSize(19.00),
                              svgPath: ImageConstant.imgArrowleft,
                              margin: getMargin(left: 22, top: 15, bottom: 24),
                              onTap: onTapArrowleft29),
                          AppbarSubtitle1(
                              text: "lbl_payment".tr,
                              margin: getMargin(
                                  left: 126, top: 17, right: 162, bottom: 17))
                        ])),
                styleType: Style.bgGradientIndigoA700Gray800),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 16, right: 20),
                              child: Text("lbl_reciept".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanBold18))),
                      Container(
                          width: double.infinity,
                          margin: getMargin(left: 19, top: 15, right: 19),
                          decoration: AppDecoration.outlineBlack9003f12
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 15, right: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text("lbl_service".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanBold15),
                                          Text("lbl_price2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoRomanBold15)
                                        ])),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(344.00),
                                    margin:
                                        getMargin(left: 16, top: 5, right: 16),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray60044)),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 21, right: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "msg_blood_test_booking".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular15)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_rs_150".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular15))
                                        ])),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(344.00),
                                    margin: getMargin(
                                        left: 16, top: 118, right: 16),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray60044)),
                                Padding(
                                    padding: getPadding(
                                        left: 16,
                                        top: 14,
                                        right: 16,
                                        bottom: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_grand_total".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanBold15)),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_rs_150".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular15))
                                        ]))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 41, right: 20),
                              child: Text("lbl_payment_method".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanBold18))),
                      Container(
                          margin: getMargin(left: 19, top: 15, right: 19),
                          decoration: AppDecoration.outlineBlack9003f12
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(left: 5),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomIconButton(
                                              height: 54,
                                              width: 54,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgComputer)),
                                          Container(
                                              margin: getMargin(
                                                  left: 19,
                                                  top: 14,
                                                  bottom: 17),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "msg2".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(18),
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    TextSpan(
                                                        text: "lbl_4769".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(18),
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400))
                                                  ]),
                                                  textAlign: TextAlign.left))
                                        ])),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtChange();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            top: 17, right: 23, bottom: 18),
                                        child: Text("lbl_change".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanSemiBold15Blue801)))
                              ])),
                      CustomButton(
                          width: 354,
                          text: "lbl_confirm_payment2".tr,
                          margin: getMargin(
                              left: 19, top: 284, right: 19, bottom: 5),
                          padding: ButtonPadding.PaddingAll11,
                          onTap: onTapConfirmpaymentOne)
                    ])))));
  }

  onTapTxtChange() {
    Get.toNamed(AppRoutes.paymentLabScreen);
  }

  onTapConfirmpaymentOne() {
    Get.defaultDialog(
        onConfirm: () => Get.toNamed(AppRoutes.donePaymentScreen),
        title: "Confirm!",
        middleText: "Are You Sure?");
  }

  onTapArrowleft29() {
    Get.back();
  }
}

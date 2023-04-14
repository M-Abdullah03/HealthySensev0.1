import 'controller/done_payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/custom_button.dart';

class DonePaymentScreen extends GetWidget<DonePaymentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      CustomButton(
                          width: 414,
                          text: "lbl_payment".tr,
                          variant: ButtonVariant.GradientIndigoA700Gray800,
                          shape: ButtonShape.Square,
                          padding: ButtonPadding.PaddingAll17),
                      Padding(
                          padding: getPadding(top: 111),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgIoncheckmarkd,
                              height: getVerticalSize(402.00),
                              width: getHorizontalSize(414.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(294.00),
                              margin: getMargin(left: 30, right: 30),
                              child: Text("msg_payment_successful".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRomanBold20
                                      .copyWith(letterSpacing: 0.40)))),
                      CustomButton(
                          width: 354,
                          text: "msg_return_to_home_screen".tr,
                          margin: getMargin(
                              left: 30, top: 140, right: 30, bottom: 5),
                          onTap: onTapReturntohomescreen,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapReturntohomescreen() {
    Get.offAllNamed(AppRoutes.homeContainerScreen);
  }
}

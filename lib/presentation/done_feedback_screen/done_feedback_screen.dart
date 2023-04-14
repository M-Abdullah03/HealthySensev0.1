import 'controller/done_feedback_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';
import 'package:healthysense/widgets/custom_button.dart';

class DoneFeedbackScreen extends GetWidget<DoneFeedbackController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(59.00),
                centerTitle: true,
                title: Container(
                    decoration: AppDecoration.gradientIndigoA700Gray8002,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AppbarImage(
                              height: getVerticalSize(20.00),
                              width: getHorizontalSize(19.00),
                              svgPath: ImageConstant.imgArrowleft,
                              margin: getMargin(left: 22, top: 15, bottom: 24),
                              onTap: onTapArrowleft18),
                          AppbarSubtitle1(
                              text: "lbl_feedback".tr,
                              margin: getMargin(
                                  left: 119, top: 8, right: 159, bottom: 26))
                        ])),
                styleType: Style.bgGradientIndigoA700Gray800_2),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(top: 64, bottom: 5),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgIoncheckmarkd,
                                  height: getVerticalSize(402.00),
                                  width: getHorizontalSize(414.00))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: getHorizontalSize(280.00),
                                  margin: getMargin(left: 51, right: 51),
                                  child: Text("msg_feedback_submitted".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRalewayRomanBold20Black900
                                          .copyWith(letterSpacing: 0.40)))),
                          CustomButton(
                              width: 354,
                              text: "msg_return_to_home_screen".tr,
                              margin: getMargin(left: 34, top: 218, right: 26),
                              padding: ButtonPadding.PaddingAll11,
                              onTap: onTapReturntohomescreen)
                        ])))));
  }

  onTapReturntohomescreen() {
    Get.offAllNamed(AppRoutes.homeContainerScreen);
  }

  onTapArrowleft18() {
    Get.back();
  }
}

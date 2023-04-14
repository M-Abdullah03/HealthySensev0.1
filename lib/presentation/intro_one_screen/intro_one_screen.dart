import 'controller/intro_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/custom_button.dart';

class IntroOneScreen extends GetWidget<IntroOneController> {
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Padding(
                          padding: getPadding(left: 62, top: 54, right: 62),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgIllustration,
                              height: getVerticalSize(344.00),
                              width: getHorizontalSize(282.00))),
                      Padding(
                          padding: getPadding(left: 62, top: 41, right: 62),
                          child: Text("msg_thousands_of_doctors".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayBold20Black900
                                  .copyWith(letterSpacing: 0.60))),
                      Container(
                          width: getHorizontalSize(291.00),
                          margin: getMargin(left: 62, top: 11, right: 61),
                          child: Text("msg_access_thousands".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRalewayMedium15
                                  .copyWith(letterSpacing: 0.45))),
                      Padding(
                          padding: getPadding(left: 62, top: 51, right: 62),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    height: getSize(11.00),
                                    width: getSize(11.00),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blue801,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(5.50)))),
                                Container(
                                    height: getSize(11.00),
                                    width: getSize(11.00),
                                    margin: getMargin(left: 7),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blue80063,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(5.50)))),
                                Container(
                                    height: getSize(11.00),
                                    width: getSize(11.00),
                                    margin: getMargin(left: 7),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blue80063,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(5.50))))
                              ])),
                      CustomButton(
                          width: 181,
                          text: "lbl_next".tr,
                          margin: getMargin(left: 62, top: 115, right: 62),
                          onTap: onTapNext),
                      GestureDetector(
                          onTap: () {
                            onTapTxtSkip();
                          },
                          child: Padding(
                              padding: getPadding(
                                  left: 62, top: 15, right: 62, bottom: 5),
                              child: Text("lbl_skip".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayBold15
                                      .copyWith(letterSpacing: 0.30))))
                    ])))));
  }

  onTapNext() {
    Get.toNamed(AppRoutes.introTwoScreen);
  }

  onTapTxtSkip() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}

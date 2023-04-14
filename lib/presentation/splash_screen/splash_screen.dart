import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 122),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgImage11,
                                  height: getVerticalSize(427.00),
                                  width: getHorizontalSize(414.00)))),
                      Container(
                          margin:
                              getMargin(left: 40, top: 1, right: 40, bottom: 5),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_healthys".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blue801,
                                        fontSize: getFontSize(45),
                                        fontFamily: 'Encode Sans SC',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_e".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blue801,
                                        fontSize: getFontSize(45),
                                        fontFamily: 'Encode Sans SC',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_nse".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blue801,
                                        fontSize: getFontSize(45),
                                        fontFamily: 'Encode Sans SC',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.left))
                    ])))));
  }
}

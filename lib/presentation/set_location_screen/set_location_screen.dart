import 'controller/set_location_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';
import 'package:healthysense/widgets/custom_button.dart';

class SetLocationScreen extends GetWidget<SetLocationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(59.00),
                leadingWidth: 41,
                leading: AppbarImage(
                    height: getVerticalSize(20.00),
                    width: getHorizontalSize(19.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 22, top: 15, bottom: 24),
                    onTap: onTapArrowleft36),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_set_location".tr),
                actions: [
                  Container(
                      height: getSize(19.00),
                      width: getSize(19.00),
                      margin:
                          getMargin(left: 101, top: 17, right: 29, bottom: 23),
                      )
                ],
                styleType: Style.bgGradientIndigoA700Gray800),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(798.00),
                        width: size.width,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgGooglemap,
                                  height: getVerticalSize(798.00),
                                  width: getHorizontalSize(414.00))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(
                                      left: 40, top: 23, right: 40, bottom: 36),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(110.00),
                                            width: getHorizontalSize(330.00),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 30,
                                                              top: 27,
                                                              right: 30,
                                                              bottom: 27),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSearch,
                                                              height: getSize(
                                                                  15.00),
                                                              width: getSize(
                                                                  15.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          decoration: AppDecoration
                                                              .outlineBlack9003f18
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            27,
                                                                        top: 28,
                                                                        right:
                                                                            27),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 1, bottom: 1),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgLocation15x12, height: getVerticalSize(15.00), width: getHorizontalSize(12.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 6),
                                                                              child: Text("lbl_search_location".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayMedium15.copyWith(letterSpacing: 0.30)))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            27,
                                                                        top: 16,
                                                                        right:
                                                                            27,
                                                                        bottom:
                                                                            27),
                                                                    child: Text(
                                                                        "msg_fast_national_university"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRalewayMedium17
                                                                            .copyWith(letterSpacing: 0.34)))
                                                              ])))
                                                ])),
                                        CustomButton(
                                            width: 329,
                                            text: "msg_set_this_location".tr,
                                            margin:
                                                getMargin(left: 1, top: 584),
                                            padding: ButtonPadding.PaddingAll11,
                                            onTap: onTapSetthislocationOne,
                                            alignment: Alignment.center)
                                      ])))
                        ]))))));
  }

  onTapSetthislocationOne() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapArrowleft36() {
    Get.back();
  }
}

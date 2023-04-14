import 'controller/menu_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';

class MenuDrawerScreen extends GetWidget<MenuDrawerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Drawer(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Container(
                          width: double.infinity,
                          margin: getMargin(right: 10),
                          decoration: AppDecoration.gradientIndigoA700Gray8002
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderLR50),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 19, right: 16),
                                        child: InkWell(
                                            onTap: () {
                                              onTapImgArrowleft();
                                            },
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                height: getVerticalSize(20.00),
                                                width: getHorizontalSize(
                                                    19.00))))),
                                Padding(
                                    padding: getPadding(left: 16, right: 16),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(58.00)),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.img36498911,
                                            height: getVerticalSize(117.00),
                                            width: getHorizontalSize(116.00),
                                            fit: BoxFit.cover))),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 26, right: 16),
                                    child: Text("msg_musa_harooon_satti".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayBold20)),
                                Padding(
                                    padding: getPadding(
                                        left: 16,
                                        top: 4,
                                        right: 16,
                                        bottom: 41),
                                    child: Text("msg_musaharoon66_gmail_com".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewaySemiBold15WhiteA700))
                              ])),
                      Container(
                          width: double.infinity,
                          margin: getMargin(right: 10),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapRowarrowright();
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.outlineBluegray4007f,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 10,
                                                      bottom: 10),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgHealthiconsui,
                                                            height:
                                                                getSize(36.00),
                                                            width:
                                                                getSize(36.00)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 13,
                                                                top: 8,
                                                                bottom: 8),
                                                            child: Text(
                                                                "lbl_profile"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanRegular16
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.32)))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 18,
                                                      right: 16,
                                                      bottom: 17),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getVerticalSize(
                                                          20.00),
                                                      width: getHorizontalSize(
                                                          19.00)))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapRowarrowrightone();
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.outlineBluegray4007f,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 14,
                                                      bottom: 10),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            elevation: 0,
                                                            margin:
                                                                EdgeInsets.all(
                                                                    0),
                                                            shape: RoundedRectangleBorder(
                                                                side: BorderSide(
                                                                    color: ColorConstant
                                                                        .blue801,
                                                                    width: getHorizontalSize(
                                                                        2.00)),
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder15),
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        31.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        30.00),
                                                                decoration: AppDecoration
                                                                    .outlineBlue8011
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder15),
                                                                child: Stack(
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Padding(
                                                                              padding: getPadding(all: 3),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgRefresh, height: getVerticalSize(25.00), width: getHorizontalSize(24.00))))
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 5,
                                                                bottom: 6),
                                                            child: Text(
                                                                "lbl_customer_care"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanRegular16
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.32)))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 20,
                                                      right: 16,
                                                      bottom: 15),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getVerticalSize(
                                                          20.00),
                                                      width: getHorizontalSize(
                                                          19.00)))
                                            ]))),
                                Container(
                                    decoration:
                                        AppDecoration.outlineBluegray4007f,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 2, top: 10, bottom: 9),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgClock,
                                                        height: getSize(37.00),
                                                        width: getSize(37.00)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 11,
                                                            bottom: 6),
                                                        child: Text(
                                                            "lbl_help_faqs".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRomanRegular16
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.32)))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  top: 20,
                                                  right: 16,
                                                  bottom: 15),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height:
                                                      getVerticalSize(20.00),
                                                  width:
                                                      getHorizontalSize(19.00)))
                                        ])),
                                GestureDetector(
                                    onTap: () {
                                      onTapRowarrowrightthree();
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.outlineBluegray4007f,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 10,
                                                      bottom: 16),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgMusic,
                                                            height:
                                                                getSize(30.00),
                                                            width:
                                                                getSize(30.00)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 8,
                                                                bottom: 2),
                                                            child: Text(
                                                                "lbl_settings"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanRegular16
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.32)))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 19,
                                                      right: 16,
                                                      bottom: 16),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getVerticalSize(
                                                          20.00),
                                                      width: getHorizontalSize(
                                                          19.00)))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapRowarrowrightfour();
                                    },
                                    child: Container(
                                        decoration:
                                            AppDecoration.outlineBluegray4007f,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 9,
                                                      bottom: 15),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgClock31x30,
                                                            height:
                                                                getVerticalSize(
                                                                    31.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    30.00)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 7,
                                                                bottom: 4),
                                                            child: Text(
                                                                "lbl_logout2"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanRegular16
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.32)))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 19,
                                                      right: 15,
                                                      bottom: 16),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getVerticalSize(
                                                          20.00),
                                                      width: getHorizontalSize(
                                                          19.00)))
                                            ]))),
                                Padding(
                                    padding: getPadding(
                                        left: 85, top: 250, right: 85),
                                    child: Text("lbl_healthysense2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewaySemiBold15Bluegray100)),
                                Padding(
                                    padding: getPadding(
                                        left: 118, right: 118, bottom: 5),
                                    child: Text("lbl_v_1_0".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRalewaySemiBold15Bluegray100))
                              ]))
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapRowarrowright() {
    Get.toNamed(AppRoutes.myProfileScreen);
  }

  onTapRowarrowrightone() {
    Get.toNamed(AppRoutes.customerCareFeedbackScreen);
  }

  onTapRowarrowrightthree() {
    Get.toNamed(AppRoutes.settingsScreen);
  }

  onTapRowarrowrightfour() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}

import 'controller/pharmacy_metropole_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_title.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';

class PharmacyMetropoleScreen extends GetWidget<PharmacyMetropoleController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(61.00),
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
                              margin: getMargin(left: 18, top: 16, bottom: 24),
                              onTap: onTapArrowleft31),
                          AppbarTitle(
                              text: "lbl_metropole_lab".tr,
                              margin:
                                  getMargin(left: 105, top: 16, bottom: 20)),
                          AppbarImage(
                              height: getVerticalSize(21.00),
                              width: getHorizontalSize(18.00),
                              svgPath: ImageConstant.imgNotification,
                              margin: getMargin(
                                  left: 91, top: 19, right: 33, bottom: 20),
                              onTap: onTapNotification28)
                        ])),
                styleType: Style.bgGradientIndigoA700Gray800),
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
                              padding: getPadding(left: 24, top: 16, right: 24),
                              child: Text("lbl_order_online".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanBold18))),
                      Padding(
                          padding: getPadding(left: 15, top: 16, right: 13),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        decoration: AppDecoration
                                            .outlineGray80030
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 20,
                                                      bottom: 26),
                                                  child: AppbarImage(
                                                      onTap: toMart,
                                                      svgPath: ImageConstant
                                                          .imgCart40x40,
                                                      height: getSize(40.00),
                                                      width: getSize(40.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 19,
                                                      right: 20,
                                                      bottom: 27),
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
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                  "lbl_pharmacy_1"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: AppStyle
                                                                      .txtRobotoBoldWhiteA700),
                                                              Container(
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              5,
                                                                          bottom:
                                                                              1),
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              5,
                                                                          top:
                                                                              1,
                                                                          right:
                                                                              5,
                                                                          bottom:
                                                                              1),
                                                                  decoration: AppDecoration
                                                                      .txtFillBluegray101
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .txtRoundedBorder2),
                                                                  child: Text(
                                                                      "lbl_6_69_km"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: AppStyle
                                                                          .txtRobotoRegular))
                                                            ]),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl_in_stock"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          style:
                                                                              AppStyle.txtRobotoRegularWhiteA700d3)),
                                                                  Container(
                                                                      margin: getMargin(
                                                                          top:
                                                                              1),
                                                                      padding: getPadding(
                                                                          left:
                                                                              5,
                                                                          top:
                                                                              1,
                                                                          right:
                                                                              5,
                                                                          bottom:
                                                                              1),
                                                                      decoration: AppDecoration
                                                                          .txtFillBluegray101
                                                                          .copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .txtRoundedBorder2),
                                                                      child: Text(
                                                                          "lbl_30_mins"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          style:
                                                                              AppStyle.txtRobotoRegular))
                                                                ]))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        margin: getMargin(top: 17),
                                        decoration: AppDecoration
                                            .outlineGray800301
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 23,
                                                      bottom: 23),
                                                  child: AppbarImage(
                                                      onTap: toMart,
                                                      svgPath:
                                                          ImageConstant.imgCart,
                                                      height: getSize(40.00),
                                                      width: getSize(40.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 19,
                                                      right: 20,
                                                      bottom: 28),
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
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                  "lbl_pharmacy_2"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: AppStyle
                                                                      .txtRobotoBoldBlack900),
                                                              Container(
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              3,
                                                                          bottom:
                                                                              3),
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              5,
                                                                          top:
                                                                              1,
                                                                          right:
                                                                              5,
                                                                          bottom:
                                                                              1),
                                                                  decoration: AppDecoration
                                                                      .txtFillBluegray101
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .txtRoundedBorder2),
                                                                  child: Text(
                                                                      "lbl_6_69_km"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: AppStyle
                                                                          .txtRobotoRegular))
                                                            ]),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "lbl_in_stock"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          style:
                                                                              AppStyle.txtRobotoRegularGray600d3)),
                                                                  Container(
                                                                      margin: getMargin(
                                                                          bottom:
                                                                              1),
                                                                      padding: getPadding(
                                                                          left:
                                                                              3,
                                                                          top:
                                                                              1,
                                                                          right:
                                                                              3,
                                                                          bottom:
                                                                              1),
                                                                      decoration: AppDecoration
                                                                          .txtFillBluegray101
                                                                          .copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .txtRoundedBorder2),
                                                                      child: Text(
                                                                          "lbl_30_mins"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          style:
                                                                              AppStyle.txtRobotoRegular))
                                                                ]))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        margin: getMargin(top: 17),
                                        decoration: AppDecoration
                                            .outlineGray800301
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 19,
                                                      bottom: 27),
                                                  child: AppbarImage(
                                                      onTap: toMart,
                                                      svgPath:
                                                          ImageConstant.imgCart,
                                                      height: getSize(40.00),
                                                      width: getSize(40.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 19,
                                                      right: 21,
                                                      bottom: 29),
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
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                  "lbl_pharmacy_3"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: AppStyle
                                                                      .txtRobotoBoldBlack900),
                                                              Container(
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              3,
                                                                          bottom:
                                                                              3),
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              5,
                                                                          top:
                                                                              1,
                                                                          right:
                                                                              5,
                                                                          bottom:
                                                                              1),
                                                                  decoration: AppDecoration
                                                                      .txtFillBluegray101
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .txtRoundedBorder2),
                                                                  child: Text(
                                                                      "lbl_6_69_km"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: AppStyle
                                                                          .txtRobotoRegular))
                                                            ]),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                      "lbl_out_of_stock"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: AppStyle
                                                                          .txtRobotoRegularGray600d3),
                                                                  Container(
                                                                      padding: getPadding(
                                                                          left:
                                                                              5,
                                                                          top:
                                                                              1,
                                                                          right:
                                                                              5,
                                                                          bottom:
                                                                              1),
                                                                      decoration: AppDecoration
                                                                          .txtFillBluegray101
                                                                          .copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .txtRoundedBorder2),
                                                                      child: Text(
                                                                          "lbl_30_mins"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          style:
                                                                              AppStyle.txtRobotoRegular))
                                                                ]))
                                                      ]))
                                            ])))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 22, top: 16, right: 22),
                              child: Text("msg_alternative_medicines".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanBold18))),
                      Padding(
                          padding: getPadding(
                              left: 15, top: 16, right: 13, bottom: 101),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        decoration: AppDecoration
                                            .outlineGray800301
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 22,
                                                      bottom: 34),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgMegaphone,
                                                      height: getVerticalSize(
                                                          29.00),
                                                      width: getHorizontalSize(
                                                          30.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 21,
                                                      right: 179,
                                                      bottom: 26),
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
                                                                "lbl_panadol"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRobotoBoldBlack900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "msg_3_times_per_day"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRobotoRegular))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        margin: getMargin(top: 17),
                                        decoration: AppDecoration
                                            .outlineGray800301
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 26,
                                                      bottom: 30),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgMegaphone,
                                                      height: getVerticalSize(
                                                          29.00),
                                                      width: getHorizontalSize(
                                                          30.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 23,
                                                      right: 179,
                                                      bottom: 26),
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
                                                                "lbl_carpol".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRobotoBoldBlack900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "msg_3_times_per_day"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRobotoRegular))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        margin: getMargin(top: 17),
                                        decoration: AppDecoration
                                            .outlineGray800301
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 26,
                                                      bottom: 30),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgMegaphone,
                                                      height: getVerticalSize(
                                                          29.00),
                                                      width: getHorizontalSize(
                                                          30.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 23,
                                                      right: 179,
                                                      bottom: 26),
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
                                                                "lbl_disprin"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRobotoBoldBlack900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "msg_3_times_per_day"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRobotoRegular))
                                                      ]))
                                            ])))
                              ]))
                    ])))));
  }

  onTapArrowleft31() {
    Get.back();
  }

  onTapNotification28() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }

  toMart() {
    Get.toNamed(AppRoutes.martCartScreen);
  }
}

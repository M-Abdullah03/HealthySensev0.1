import 'controller/medicine_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:healthysense/widgets/app_bar/appbar_title.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';

class MedicineScreen extends GetWidget<MedicineController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(58.00),
                leadingWidth: 37,
                leading: AppbarImage(
                    height: getVerticalSize(20.00),
                    width: getHorizontalSize(19.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 13, bottom: 24),
                    onTap: onTapArrowleft30),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_panadol".tr),
                actions: [
                  Container(
                      height: getVerticalSize(20.00),
                      width: getHorizontalSize(21.77),
                      margin:
                          getMargin(left: 121, top: 17, right: 28, bottom: 20),
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        AppbarImage(
                            height: getVerticalSize(20.00),
                            width: getHorizontalSize(15.00),
                            svgPath: ImageConstant.imgNotification20x15,
                            margin: getMargin(right: 6)),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                height: getSize(9.00),
                                width: getSize(9.00),
                                margin: getMargin(left: 12, top: 1, bottom: 9),
                                decoration: BoxDecoration(
                                    color: ColorConstant.redA400,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(4.71))))),
                        AppbarSubtitle5(
                            text: "lbl_1".tr,
                            margin: getMargin(left: 15, right: 2, bottom: 10))
                      ]))
                ],
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
                              padding: getPadding(left: 19, top: 12, right: 19),
                              child: Text("lbl_order_online".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanBold18))),
                      Padding(
                          padding: getPadding(left: 16, top: 12, right: 13),
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
                                                      left: 8,
                                                      top: 17,
                                                      bottom: 29),
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgCart,
                                                      height: getSize(40.00),
                                                      width: getSize(40.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7,
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
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_metropole_lab"
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
                                                                              4,
                                                                          bottom:
                                                                              2),
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              4,
                                                                          top:
                                                                              1,
                                                                          right:
                                                                              4,
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
                                                                          "lbl_out_of_stock"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          style:
                                                                              AppStyle.txtRobotoRegularGray600d3)),
                                                                  Container(
                                                                      margin: getMargin(
                                                                          top:
                                                                              1),
                                                                      padding: getPadding(
                                                                          left:
                                                                              4,
                                                                          top:
                                                                              1,
                                                                          right:
                                                                              4,
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
                                        margin: getMargin(top: 13),
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
                                                      left: 7,
                                                      top: 19,
                                                      bottom: 27),
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgCart,
                                                      height: getSize(40.00),
                                                      width: getSize(40.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 19,
                                                      right: 22,
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
                                                                    .start,
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
                                                                              1,
                                                                          bottom:
                                                                              5),
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              4,
                                                                          top:
                                                                              1,
                                                                          right:
                                                                              4,
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
                                                                              4,
                                                                          top:
                                                                              1,
                                                                          right:
                                                                              4,
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
                                        margin: getMargin(top: 13),
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
                                                      top: 17,
                                                      bottom: 29),
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgCart,
                                                      height: getSize(40.00),
                                                      width: getSize(40.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 19,
                                                      right: 22,
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
                                                                    .start,
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
                                                                              1,
                                                                          bottom:
                                                                              5),
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              4,
                                                                          top:
                                                                              1,
                                                                          right:
                                                                              4,
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
                                                                              4,
                                                                          top:
                                                                              1,
                                                                          right:
                                                                              4,
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
                              padding: getPadding(left: 20, top: 12, right: 20),
                              child: Text("msg_alternative_medicines".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanBold18))),
                      Padding(
                          padding: getPadding(
                              left: 16, top: 12, right: 13, bottom: 136),
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
                                                      left: 16,
                                                      top: 26,
                                                      bottom: 30),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgMegaphone1,
                                                      height: getVerticalSize(
                                                          29.00),
                                                      width: getHorizontalSize(
                                                          30.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
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
                                                                "lbl_paracetamol"
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
                                        margin: getMargin(top: 13),
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
                                                      left: 13,
                                                      top: 24,
                                                      bottom: 32),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgMegaphone2,
                                                      height: getVerticalSize(
                                                          29.00),
                                                      width: getHorizontalSize(
                                                          30.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 11,
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
                                        margin: getMargin(top: 13),
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
                                                      left: 13,
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
                                                      left: 11,
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

  onTapArrowleft30() {
    Get.back();
  }
}

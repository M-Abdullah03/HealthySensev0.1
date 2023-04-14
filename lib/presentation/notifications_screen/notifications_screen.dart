import 'controller/notifications_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';
import 'package:healthysense/widgets/custom_button.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(68.00),
                centerTitle: true,
                title: Container(
                    decoration: AppDecoration.gradientIndigoA700Gray800,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AppbarImage(
                              height: getVerticalSize(20.00),
                              width: getHorizontalSize(19.00),
                              svgPath: ImageConstant.imgArrowleft,
                              margin: getMargin(left: 27, top: 55, bottom: 23),
                              onTap: onTapArrowleft6),
                          AppbarSubtitle1(
                              text: "lbl_notifications".tr,
                              margin: getMargin(
                                  left: 101, top: 54, right: 146, bottom: 19))
                        ])),
                styleType: Style.bgGradientIndigoA700Gray800),
            body: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Container(
                      width: double.infinity,
                      decoration: AppDecoration.outlineBlack9003f12,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding:
                                    getPadding(left: 14, top: 29, right: 14),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                          padding: getPadding(bottom: 4),
                                          child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgClose50x50,
                                              height: getSize(50.00),
                                              width: getSize(50.00))),
                                      Padding(
                                          padding: getPadding(left: 14, top: 3),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "msg_appointment_cancelled"
                                                        .tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayBold20Black900),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 8, right: 10),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text(
                                                                  "lbl_today"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRalewayRomanRegular15)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      12.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00),
                                                              margin: getMargin(
                                                                  left: 12,
                                                                  top: 1,
                                                                  bottom: 4),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .bluegray400)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 11,
                                                                      top: 1),
                                                              child: Text(
                                                                  "lbl_15_36_pm"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRalewayRomanRegular15))
                                                        ]))
                                              ])),
                                      CustomButton(
                                          width: 39,
                                          text: "lbl_new".tr,
                                          margin: getMargin(
                                              left: 33, top: 18, bottom: 14),
                                          variant:
                                              ButtonVariant.FillIndigoA700ce,
                                          shape: ButtonShape.RoundedBorder5,
                                          padding: ButtonPadding.PaddingAll3,
                                          fontStyle:
                                              ButtonFontStyle.RalewayBold10)
                                    ])),
                            Container(
                                width: getHorizontalSize(378.00),
                                margin: getMargin(
                                    left: 14, top: 17, right: 14, bottom: 23),
                                child: Text("msg_you_have_successdully".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanRegular14))
                          ])),
                  Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: size.width,
                                decoration: AppDecoration.outlineBlack9003f13,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 14, top: 32, right: 14),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          15),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCalendar,
                                                                  height:
                                                                      getSize(
                                                                          36.00),
                                                                  width: getSize(
                                                                      36.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 21,
                                                                      top: 1),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "msg_schedule_changed"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: AppStyle
                                                                            .txtRalewayBoldBlack900),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                7,
                                                                            right:
                                                                                10),
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(padding: getPadding(top: 1), child: Text("lbl_yesterday".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewayRegular)),
                                                                              Container(height: getVerticalSize(12.00), width: getHorizontalSize(1.00), margin: getMargin(left: 11, top: 2, bottom: 3), decoration: BoxDecoration(color: ColorConstant.bluegray400)),
                                                                              Padding(padding: getPadding(left: 11, bottom: 1), child: Text("lbl_15_36_pm".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewayRegular))
                                                                            ]))
                                                                  ]))
                                                        ]),
                                                    Container(
                                                      width: getHorizontalSize(
                                                          39.00),
                                                      margin: getMargin(
                                                          top: 15, bottom: 14),
                                                      /*  decoration: AppDecoration
                                                            .btnFillIndigoA700ce
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .btnRoundedBorder5) */
                                                    )
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              width: getHorizontalSize(368.00),
                                              margin: getMargin(
                                                  left: 14,
                                                  top: 17,
                                                  right: 14,
                                                  bottom: 23),
                                              child: Text(
                                                  "msg_you_have_successdully2"
                                                      .tr,
                                                  maxLines: null,
                                                  style: AppStyle
                                                      .txtRalewayRegular)))
                                    ]))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: size.width,
                                decoration: AppDecoration.outlineBlack9003f13,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 25, top: 32, right: 25),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 1, bottom: 16),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCalendar,
                                                            height:
                                                                getSize(36.00),
                                                            width: getSize(
                                                                36.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 21),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "msg_appointment_success"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: AppStyle
                                                                      .txtRalewayBoldBlack900),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              8,
                                                                          right:
                                                                              10),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 2),
                                                                            child: Text("lbl_19_oct_2022".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewayRegular)),
                                                                        Container(
                                                                            height: getVerticalSize(
                                                                                12.00),
                                                                            width: getHorizontalSize(
                                                                                1.00),
                                                                            margin: getMargin(
                                                                                left: 15,
                                                                                top: 3,
                                                                                bottom: 4),
                                                                            decoration: BoxDecoration(color: ColorConstant.bluegray400)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 11, bottom: 2),
                                                                            child: Text("lbl_18_35_pm".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewayRegular))
                                                                      ]))
                                                            ]))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              width: getHorizontalSize(383.00),
                                              margin: getMargin(
                                                  left: 14,
                                                  top: 14,
                                                  right: 14,
                                                  bottom: 23),
                                              child: Text(
                                                  "msg_you_have_successdully3"
                                                      .tr,
                                                  maxLines: null,
                                                  style: AppStyle
                                                      .txtRalewayRegular)))
                                    ]))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: size.width,
                                decoration: AppDecoration.outlineBlack9003f13,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 25, top: 30, right: 25),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 1, bottom: 16),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgTicket,
                                                            height:
                                                                getVerticalSize(
                                                                    38.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    36.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 21),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "msg_new_services_available"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: AppStyle
                                                                      .txtRalewayBoldBlack900),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              12,
                                                                          right:
                                                                              10),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(bottom: 1),
                                                                            child: Text("lbl_14_oct_2022".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewayRegular)),
                                                                        Container(
                                                                            height: getVerticalSize(
                                                                                12.00),
                                                                            width: getHorizontalSize(
                                                                                1.00),
                                                                            margin: getMargin(
                                                                                left: 16,
                                                                                top: 1,
                                                                                bottom: 4),
                                                                            decoration: BoxDecoration(color: ColorConstant.bluegray400)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 13, top: 1),
                                                                            child: Text("lbl_15_36_pm".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewayRegular))
                                                                      ]))
                                                            ]))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              width: getHorizontalSize(378.00),
                                              margin: getMargin(
                                                  left: 14,
                                                  top: 15,
                                                  right: 14,
                                                  bottom: 39),
                                              child: Text(
                                                  "msg_you_can_now_make".tr,
                                                  maxLines: null,
                                                  style: AppStyle
                                                      .txtRalewayRegular)))
                                    ]))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: size.width,
                                decoration: AppDecoration.outlineBlack9003f13,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 26, top: 30, right: 26),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgInstagram,
                                                            height:
                                                                getVerticalSize(
                                                                    26.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    33.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 22,
                                                            bottom: 8),
                                                        child: Text(
                                                            "msg_credit_card_connected"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: AppStyle
                                                                .txtRalewayBoldBlack900))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 82, top: 1, right: 82),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text(
                                                            "lbl_12_oct_2022"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: AppStyle
                                                                .txtRalewayRegular)),
                                                    Container(
                                                        height: getVerticalSize(
                                                            12.00),
                                                        width:
                                                            getHorizontalSize(
                                                                1.00),
                                                        margin: getMargin(
                                                            left: 16,
                                                            top: 1,
                                                            bottom: 5),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .bluegray400)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 11, top: 1),
                                                        child: Text(
                                                            "lbl_15_36_pm".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: AppStyle
                                                                .txtRalewayRegular))
                                                  ]))),
                                      Container(
                                          width: getHorizontalSize(378.00),
                                          margin: getMargin(
                                              left: 14,
                                              top: 17,
                                              right: 14,
                                              bottom: 5),
                                          child: Text(
                                              "msg_you_have_successdully".tr,
                                              maxLines: null,
                                              style:
                                                  AppStyle.txtRalewayRegular))
                                    ])))
                      ])
                ]))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}

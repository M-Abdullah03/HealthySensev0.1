import 'package:healthysense/widgets/app_bar/appbar_subtitle_5.dart';

import 'controller/my_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';

class MyProfileScreen extends GetWidget<MyProfileController> {
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
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration
                                  .gradientIndigoA700Gray8002
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderBL40),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomAppBar(
                                        height: getVerticalSize(56.00),
                                        leadingWidth: 41,
                                        leading: AppbarImage(
                                            height: getVerticalSize(20.00),
                                            width: getHorizontalSize(19.00),
                                            svgPath: ImageConstant.imgArrowleft,
                                            margin:
                                                getMargin(left: 22, bottom: 6),
                                            onTap: onTapArrowleft5),
                                        centerTitle: true,
                                        title: AppbarSubtitle1(
                                            text: "lbl_profile".tr),
                                        actions: [
                                          AppbarImage(
                                              height: getVerticalSize(21.00),
                                              width: getHorizontalSize(18.00),
                                              svgPath:
                                                  ImageConstant.imgNotification,
                                              margin: getMargin(
                                                  left: 33,
                                                  top: 2,
                                                  right: 33,
                                                  bottom: 3),
                                              onTap: onTapNotification3)
                                        ]),
                                    Padding(
                                        padding: getPadding(
                                            left: 109, top: 11, right: 109),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(57.51)),
                                            child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.img36498911,
                                                height: getVerticalSize(116.00),
                                                width:
                                                    getHorizontalSize(115.00),
                                                fit: BoxFit.cover))),
                                    Padding(
                                        padding: getPadding(
                                            left: 109, top: 7, right: 109),
                                        child: Text("msg_musa_harooon_satti".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayBold20)),
                                    Padding(
                                        padding: getPadding(
                                            left: 109,
                                            top: 4,
                                            right: 109,
                                            bottom: 38),
                                        child: Text(
                                            "msg_musaharoon66_gmail_com".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewaySemiBold15WhiteA700))
                                  ]))),
                      Container(
                          padding: getPadding(bottom: 0, top: 0),
                          margin: getMargin(top: 20),
                          height: getVerticalSize(186.00),
                          width: getHorizontalSize(352.00),
                          decoration: AppDecoration.outlineBlack9003f10
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Column(children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: getPadding(
                                      left: 33, top: 12, bottom: 0, right: 30),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(bottom: 0),
                                            child: AppbarImage(
                                                svgPath:
                                                    ImageConstant.imgUser14x10,
                                                height: getVerticalSize(14.00),
                                                onTap: ToEditProf,
                                                width:
                                                    getHorizontalSize(10.00))),
                                        Padding(
                                            padding:
                                                getPadding(left: 16, top: 1),
                                            child: TextButton(
                                                onPressed: ToEditProf,
                                                child: Text(
                                                    "msg_profile_settings".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: AppStyle
                                                        .txtRalewaySemiBoldBlack900)))
                                      ])),
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding:
                                      getPadding(left: 33, top: 1, right: 31),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 1),
                                            child: AppbarImage(
                                                svgPath: ImageConstant
                                                    .imgNotification15x14,
                                                height: getVerticalSize(15.00),
                                                onTap: toEditNotifs,
                                                width:
                                                    getHorizontalSize(14.00))),
                                        Padding(
                                            padding:
                                                getPadding(left: 11, top: 0),
                                            child: TextButton(
                                                onPressed: toEditNotifs,
                                                child: Text(
                                                    "lbl_notifications".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: AppStyle
                                                        .txtRalewaySemiBoldBlack900)))
                                      ]),
                                )),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding:
                                        getPadding(left: 33, top: 5, right: 32),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 13, bottom: 0),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgSave,
                                                        height: getVerticalSize(
                                                            10.00),
                                                        width:
                                                            getHorizontalSize(
                                                                14.00))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 14, top: 11),
                                                    child: Text(
                                                        "lbl_payment_details"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: AppStyle
                                                            .txtRalewaySemiBoldBlack900))
                                              ]),
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 38,
                                        top: 20,
                                        right: 31,
                                        bottom: 16),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 4, bottom: 3),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgUser10x11,
                                                        height: getVerticalSize(
                                                            10.00),
                                                        width:
                                                            getHorizontalSize(
                                                                11.00))),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 14),
                                                    child: Text(
                                                        "lbl_refer_a_friend".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: AppStyle
                                                            .txtRalewaySemiBoldBlack900))
                                              ]),
                                        ])))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 30, top: 27, bottom: 5),
                              decoration: AppDecoration.outlineBlack9003f11
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 35, top: 17, right: 35),
                                        child: Text("msg_terms_conditions".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewaySemiBold15Gray700)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtAboutus();
                                        },
                                        child: Padding(
                                            padding: getPadding(
                                                left: 35, top: 17, right: 35),
                                            child: Text("lbl_about_us".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewaySemiBold15Blue801))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtLogout();
                                        },
                                        child: Padding(
                                            padding: getPadding(
                                                left: 35,
                                                top: 18,
                                                right: 35,
                                                bottom: 5),
                                            child: Text("lbl_log_out".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewaySemiBold15Blue801)))
                                  ])))
                    ])))));
  }

  onTapArrowleft5() {
    Get.back();
  }

  toEditNotifs() {
    Get.toNamed(AppRoutes.notifExpandedScreen);
  }

  onTapNotification3() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }

  onTapTxtAboutus() {
    Get.toNamed(AppRoutes.aboutUsScreen);
  }

  ToEditProf() {
    Get.toNamed(AppRoutes.editProfileScreen);
  }

  onTapTxtLogout() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}

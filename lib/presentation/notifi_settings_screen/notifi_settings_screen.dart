import 'controller/notifi_settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';
import 'package:healthysense/widgets/custom_switch.dart';

class NotifiSettingsScreen extends GetWidget<NotifiSettingsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomAppBar(
                                        height: getVerticalSize(60.00),
                                        centerTitle: true,
                                        title: Container(
                                            decoration: AppDecoration
                                                .gradientIndigoA700Gray800,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  AppbarImage(
                                                      height: getVerticalSize(
                                                          20.00),
                                                      width: getHorizontalSize(
                                                          19.00),
                                                      svgPath: ImageConstant
                                                          .imgArrowleft,
                                                      margin: getMargin(
                                                          left: 17,
                                                          top: 16,
                                                          bottom: 24),
                                                      onTap: onTapArrowleft25),
                                                  AppbarSubtitle1(
                                                      text: "lbl_notifications"
                                                          .tr,
                                                      margin: getMargin(
                                                          left: 110,
                                                          top: 19,
                                                          bottom: 16)),
                                                  AppbarImage(
                                                      height: getVerticalSize(
                                                          21.00),
                                                      width: getHorizontalSize(
                                                          18.00),
                                                      svgPath: ImageConstant
                                                          .imgNotification,
                                                      margin: getMargin(
                                                          left: 96,
                                                          top: 18,
                                                          right: 33,
                                                          bottom: 21),
                                                      onTap:
                                                          onTapNotification22)
                                                ])),
                                        styleType:
                                            Style.bgGradientIndigoA700Gray800),
                                    Container(
                                        margin: getMargin(bottom: 742),
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
                                                      left: 31,
                                                      top: 16,
                                                      bottom: 17),
                                                  child: Text(
                                                      "msg_allow_notifications"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular18
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.36))),
                                              Obx(() => CustomSwitch(
                                                  margin: getMargin(
                                                      top: 17,
                                                      right: 18,
                                                      bottom: 17),
                                                  value: controller
                                                      .isSelectedSwitch.value,
                                                  onChanged: (value) {
                                                    controller.isSelectedSwitch
                                                        .value = value;
                                                    expand();
                                                  }))
                                            ]))
                                  ])))
                    ])))));
  }

  onTapArrowleft25() {
    Get.back();
  }

  expand() {
    Get.toNamed(AppRoutes.notifExpandedScreen);
  }

  onTapNotification22() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }
}

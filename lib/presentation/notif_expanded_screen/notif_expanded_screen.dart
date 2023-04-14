import 'controller/notif_expanded_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';
import 'package:healthysense/widgets/custom_switch.dart';

class NotifExpandedScreen extends GetWidget<NotifExpandedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(63.00),
                leadingWidth: 36,
                leading: AppbarImage(
                    height: getVerticalSize(20.00),
                    width: getHorizontalSize(19.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 17, top: 16, bottom: 26),
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_notifications".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(21.00),
                      width: getHorizontalSize(18.00),
                      svgPath: ImageConstant.imgNotification,
                      margin:
                          getMargin(left: 33, top: 19, right: 33, bottom: 22),
                      onTap: onTapNotification)
                ],
                styleType: Style.bgGradientIndigoA700Gray800),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Container(
                          margin: getMargin(top: 2),
                          decoration: AppDecoration.outlineBluegray4007f,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 31, top: 16, bottom: 17),
                                    child: Text("msg_allow_notifications".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular18
                                            .copyWith(letterSpacing: 0.36))),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(
                                        top: 17, right: 4, bottom: 17),
                                    value: controller.isSelectedSwitch.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch.value = value;
                                    }))
                              ])),
                      Container(
                          margin: getMargin(top: 2),
                          decoration: AppDecoration.outlineBluegray4007f,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 31, top: 17, bottom: 16),
                                    child: Text("lbl_sound".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular18
                                            .copyWith(letterSpacing: 0.36))),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(
                                        top: 18, right: 7, bottom: 16),
                                    value: controller.isSelectedSwitch2.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch2.value =
                                          value;
                                    }))
                              ])),
                      Container(
                          margin: getMargin(top: 2),
                          decoration: AppDecoration.outlineBluegray4007f,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 31, top: 17, bottom: 16),
                                    child: Text("lbl_vibrate".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular18
                                            .copyWith(letterSpacing: 0.36))),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(
                                        top: 18, right: 7, bottom: 16),
                                    value: controller.isSelectedSwitch3.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch3.value =
                                          value;
                                    }))
                              ])),
                      Container(
                          margin: getMargin(top: 2),
                          decoration: AppDecoration.outlineBluegray4007f,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 31, top: 18, bottom: 15),
                                    child: Text("lbl_special_offers".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular18
                                            .copyWith(letterSpacing: 0.36))),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(
                                        top: 18, right: 7, bottom: 16),
                                    value: controller.isSelectedSwitch4.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch4.value =
                                          value;
                                    }))
                              ])),
                      Container(
                          margin: getMargin(top: 2),
                          decoration: AppDecoration.outlineBluegray4007f,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 31, top: 17, bottom: 16),
                                    child: Text("msg_promo_and_discount".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular18
                                            .copyWith(letterSpacing: 0.36))),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(
                                        top: 18, right: 7, bottom: 16),
                                    value: controller.isSelectedSwitch5.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch5.value =
                                          value;
                                    }))
                              ])),
                      Container(
                          margin: getMargin(top: 2),
                          decoration: AppDecoration.outlineBluegray4007f,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 31, top: 19, bottom: 14),
                                    child: Text("lbl_payments".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular18
                                            .copyWith(letterSpacing: 0.36))),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(
                                        top: 18, right: 7, bottom: 16),
                                    value: controller.isSelectedSwitch6.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch6.value =
                                          value;
                                    }))
                              ])),
                      Container(
                          margin: getMargin(top: 2),
                          decoration: AppDecoration.outlineBluegray4007f,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 31, top: 19, bottom: 14),
                                    child: Text("lbl_app_updates".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular18
                                            .copyWith(letterSpacing: 0.36))),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(
                                        top: 18, right: 7, bottom: 16),
                                    value: controller.isSelectedSwitch7.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch7.value =
                                          value;
                                    }))
                              ])),
                      Container(
                          margin: getMargin(top: 2),
                          decoration: AppDecoration.outlineBluegray4007f,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 31, top: 19, bottom: 14),
                                    child: Text("lbl_new_updates".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular18
                                            .copyWith(letterSpacing: 0.36))),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(
                                        top: 18, right: 7, bottom: 16),
                                    value: controller.isSelectedSwitch8.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch8.value =
                                          value;
                                    }))
                              ])),
                      Container(
                          margin: getMargin(top: 2, bottom: 213),
                          decoration: AppDecoration.outlineBluegray4007f,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 31, top: 19, bottom: 14),
                                    child: Text("lbl_app_updates".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular18
                                            .copyWith(letterSpacing: 0.36))),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(
                                        top: 18, right: 7, bottom: 16),
                                    value: controller.isSelectedSwitch9.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch9.value =
                                          value;
                                    }))
                              ]))
                    ])))));
  }

  onTapArrowleft() {
    Get.toNamed(AppRoutes.settingsScreen);
  }

  onTapNotification() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }
}

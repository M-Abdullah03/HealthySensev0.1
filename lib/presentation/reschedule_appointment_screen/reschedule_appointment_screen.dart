import 'controller/reschedule_appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';
import 'package:healthysense/widgets/custom_button.dart';

class RescheduleAppointmentScreen
    extends GetWidget<RescheduleAppointmentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(60.00),
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
                              margin: getMargin(left: 22, top: 16, bottom: 24),
                              onTap: onTapArrowleft14),
                          AppbarSubtitle1(
                              text: "msg_reschedule_appointment".tr,
                              margin: getMargin(left: 47, top: 22, bottom: 13)),
                          AppbarImage(
                              height: getVerticalSize(21.00),
                              width: getHorizontalSize(18.00),
                              svgPath: ImageConstant.imgNotification,
                              margin: getMargin(
                                  left: 31, top: 18, right: 33, bottom: 21),
                              onTap: onTapNotification12)
                        ])),
                styleType: Style.bgGradientIndigoA700Gray800),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 33, top: 20, right: 33),
                              child: Text("lbl_reason".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayBold15Blue8011))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 32, top: 23, right: 32),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          controller.radioGroup.value =
                                              "msg_i_m_not_available".tr;
                                        },
                                        child: Row(children: [
                                          SizedBox(
                                              child: Radio<String>(
                                                  value: "msg_i_m_not_available"
                                                      .tr,
                                                  groupValue: controller
                                                      .radioGroup.value,
                                                  onChanged: (value) {
                                                    controller.radioGroup
                                                        .value = value!;
                                                  })),
                                          Padding(
                                              padding: getPadding(left: 10),
                                              child: Text(
                                                  "msg_i_m_not_available".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .bluegray400,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.w700)))
                                        ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 11, top: 4, bottom: 1),
                                        child: Text("lbl_1".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayBold15WhiteA700))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 32, top: 16, right: 32),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(),
                                        child: InkWell(
                                            onTap: () {
                                              controller.radioGroup1.value =
                                                  "msg_i_m_having_a_schedule"
                                                      .tr;
                                            },
                                            child: Row(children: [
                                              SizedBox(
                                                  child: Radio<String>(
                                                      value:
                                                          "msg_i_m_having_a_schedule"
                                                              .tr,
                                                      groupValue: controller
                                                          .radioGroup1.value,
                                                      onChanged: (value) {
                                                        controller.radioGroup1
                                                            .value = value!;
                                                      })),
                                              Padding(
                                                  padding: getPadding(left: 10),
                                                  child: Text(
                                                      "msg_i_m_having_a_schedule"
                                                          .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .bluegray400,
                                                          fontSize:
                                                              getFontSize(15),
                                                          fontFamily: 'Raleway',
                                                          fontWeight:
                                                              FontWeight.w700)))
                                            ]))),
                                    Padding(
                                        padding: getPadding(left: 11, top: 6),
                                        child: Text("lbl_1".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayBold15WhiteA700))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 32, top: 15, right: 32),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          controller.radioGroup2.value =
                                              "msg_i_don_t_want_to".tr;
                                        },
                                        child: Row(children: [
                                          SizedBox(
                                              child: Radio<String>(
                                                  value:
                                                      "msg_i_don_t_want_to".tr,
                                                  groupValue: controller
                                                      .radioGroup2.value,
                                                  onChanged: (value) {
                                                    controller.radioGroup2
                                                        .value = value!;
                                                  })),
                                          Padding(
                                              padding: getPadding(left: 10),
                                              child: Text(
                                                  "msg_i_don_t_want_to".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .bluegray400,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.w700)))
                                        ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 11, top: 4, bottom: 1),
                                        child: Text("lbl_1".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayBold15WhiteA700))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 31, top: 16, right: 31),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          controller.radioGroup3.value =
                                              "lbl_others".tr;
                                        },
                                        child: Row(children: [
                                          SizedBox(
                                              child: Radio<String>(
                                                  value: "lbl_others".tr,
                                                  groupValue: controller
                                                      .radioGroup3.value,
                                                  onChanged: (value) {
                                                    controller.radioGroup3
                                                        .value = value!;
                                                  })),
                                          Padding(
                                              padding: getPadding(left: 10),
                                              child: Text("lbl_others".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .bluegray400,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.w700)))
                                        ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 4, bottom: 3),
                                        child: Text("lbl_1".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayBold15WhiteA700))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                            //Create textbox for comments
                            width: 400,
                            height: 130,
                            decoration: AppDecoration.outlineBluegray4007f1
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                            child: Padding(
                                padding: getPadding(
                                    left: 20, top: 10, right: 20, bottom: 10),
                                child: TextField(
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Desrcibe (optional)".tr,
                                        hintStyle: AppStyle
                                            .txtRalewayRegularBluegray400))),
                          )),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(
                                  left: 35, top: 335, right: 31, bottom: 5),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomButton(
                                        width: 330,
                                        margin: getMargin(
                                          left: 0,
                                          top: 0,
                                          right: 0,
                                        ),
                                        text: "msg_reschedule_appointment".tr,
                                        onTap: resched,
                                        alignment: Alignment.centerLeft)
                                  ])))
                    ])))));
  }

  resched() {
    Get.toNamed(AppRoutes.rescheduleDateScreen);
  }

  onTapArrowleft14() {
    Get.back();
  }

  onTapNotification12() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }
}

import 'controller/cancel_appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';
import 'package:healthysense/widgets/custom_button.dart';

class CancelAppointmentScreen extends GetWidget<CancelAppointmentController> {
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
                              onTap: onTapArrowleft13),
                          AppbarSubtitle1(
                              text: "msg_cancel_appointment".tr,
                              margin: getMargin(left: 66, top: 15, bottom: 20)),
                          AppbarImage(
                              height: getVerticalSize(21.00),
                              width: getHorizontalSize(18.00),
                              svgPath: ImageConstant.imgNotification,
                              margin: getMargin(
                                  left: 59, top: 18, right: 33, bottom: 21),
                              onTap: onTapNotification11)
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
                              padding: getPadding(left: 30, top: 21, right: 30),
                              child: Text("lbl_reason".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayBold15Blue801))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 30, top: 25, right: 30),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 30, top: 16, right: 30),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          controller.radioGroup1.value =
                                              "msg_i_want_to_change".tr;
                                        },
                                        child: Row(children: [
                                          SizedBox(
                                              child: Radio<String>(
                                                  value:
                                                      "msg_i_want_to_change".tr,
                                                  groupValue: controller
                                                      .radioGroup1.value,
                                                  onChanged: (value) {
                                                    controller.radioGroup1
                                                        .value = value!;
                                                  })),
                                          Padding(
                                              padding: getPadding(left: 10),
                                              child: Text(
                                                  "msg_i_want_to_change".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .bluegray400,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.w700)))
                                        ])),
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 30, top: 13, right: 30),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(),
                                        child: InkWell(
                                            onTap: () {
                                              controller.radioGroup2.value =
                                                  "msg_i_want_to_change2".tr;
                                            },
                                            child: Row(children: [
                                              SizedBox(
                                                  child: Radio<String>(
                                                      value:
                                                          "msg_i_want_to_change2"
                                                              .tr,
                                                      groupValue: controller
                                                          .radioGroup2.value,
                                                      onChanged: (value) {
                                                        controller.radioGroup2
                                                            .value = value!;
                                                      })),
                                              Padding(
                                                  padding: getPadding(left: 10),
                                                  child: Text(
                                                      "msg_i_want_to_change2"
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
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 30, top: 14, right: 30),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          controller.radioGroup3.value =
                                              "msg_i_have_recovered".tr;
                                        },
                                        child: Row(children: [
                                          SizedBox(
                                              child: Radio<String>(
                                                  value:
                                                      "msg_i_have_recovered".tr,
                                                  groupValue: controller
                                                      .radioGroup3.value,
                                                  onChanged: (value) {
                                                    controller.radioGroup3
                                                        .value = value!;
                                                  })),
                                          Padding(
                                              padding: getPadding(left: 10),
                                              child: Text(
                                                  "msg_i_have_recovered".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .bluegray400,
                                                      fontSize: getFontSize(15),
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.w700)))
                                        ])),
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 30, top: 16, right: 30),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          controller.radioGroup4.value =
                                              "msg_i_don_t_want_to".tr;
                                        },
                                        child: Row(children: [
                                          SizedBox(
                                              child: Radio<String>(
                                                  value:
                                                      "msg_i_don_t_want_to".tr,
                                                  groupValue: controller
                                                      .radioGroup4.value,
                                                  onChanged: (value) {
                                                    controller.radioGroup4
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
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 29, top: 14, right: 29),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          controller.radioGroup5.value =
                                              "lbl_others".tr;
                                        },
                                        child: Row(children: [
                                          SizedBox(
                                              child: Radio<String>(
                                                  value: "lbl_others".tr,
                                                  groupValue: controller
                                                      .radioGroup5.value,
                                                  onChanged: (value) {
                                                    controller.radioGroup5
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
                        ),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 28, top: 10, right: 28),
                              child: Text("msg_note_only_50_of".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayMedium15))),
                      CustomButton(
                          width: 354,
                          text: "msg_cancel_appointment".tr,
                          margin: getMargin(
                              left: 28, top: 206, right: 28, bottom: 5),
                          onTap: onTapCancelappointment,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapCancelappointment() {
    Get.toNamed(AppRoutes.doneCancelledScreen);
  }

  onTapArrowleft13() {
    Get.back();
  }

  onTapNotification11() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }
}

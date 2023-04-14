import 'controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/core/utils/validation_functions.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';
import 'package:healthysense/widgets/custom_button.dart';
import 'package:healthysense/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                              margin: getMargin(left: 24, top: 16, bottom: 24),
                              onTap: onTapArrowleft22),
                          AppbarSubtitle1(
                              text: "lbl_edit_profile".tr,
                              margin:
                                  getMargin(left: 109, top: 18, bottom: 17)),
                          AppbarImage(
                              height: getVerticalSize(21.00),
                              width: getHorizontalSize(18.00),
                              svgPath: ImageConstant.imgNotification,
                              margin: getMargin(
                                  left: 106, top: 18, right: 33, bottom: 21),
                              onTap: onTapNotification19)
                        ])),
                styleType: Style.bgGradientIndigoA700Gray800),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 28, top: 30, right: 28),
                                      child: Text("lbl_username".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRalewayBold14))),
                              CustomTextFormField(
                                  width: 374,
                                  focusNode: FocusNode(),
                                  controller: controller.group4304Controller,
                                  hintText: "lbl_musa_haroon".tr,
                                  margin:
                                      getMargin(left: 20, top: 4, right: 20),
                                  variant: TextFormFieldVariant.FillGray40033),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 28, top: 15, right: 28),
                                      child: Text("lbl_email".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRalewayBold14))),
                              CustomTextFormField(
                                  width: 374,
                                  focusNode: FocusNode(),
                                  controller: controller.emailOneController,
                                  hintText: "msg_musaharooon66_gmail_com".tr,
                                  margin:
                                      getMargin(left: 20, top: 4, right: 20),
                                  variant: TextFormFieldVariant.FillGray40033,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 28, top: 15, right: 28),
                                      child: Text("lbl_dob".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRalewayBold14))),
                              CustomTextFormField(
                                  width: 374,
                                  focusNode: FocusNode(),
                                  controller: controller.dateController,
                                  hintText: "lbl_30_10_2003".tr,
                                  margin:
                                      getMargin(left: 20, top: 4, right: 20),
                                  variant: TextFormFieldVariant.FillGray40033),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 28, top: 17, right: 28),
                                      child: Text("lbl_country".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRalewayBold14))),
                              CustomTextFormField(
                                  width: 374,
                                  focusNode: FocusNode(),
                                  controller: controller.group4307Controller,
                                  hintText: "lbl_pakistan".tr,
                                  margin:
                                      getMargin(left: 20, top: 2, right: 20),
                                  variant: TextFormFieldVariant.FillGray40033),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 28, top: 15, right: 28),
                                      child: Text("lbl_phone_number".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRalewayBold14))),
                              CustomTextFormField(
                                  width: 374,
                                  focusNode: FocusNode(),
                                  controller: controller.mobileNoController,
                                  hintText: "lbl_92_3331234567".tr,
                                  margin:
                                      getMargin(left: 20, top: 4, right: 20),
                                  variant: TextFormFieldVariant.FillGray40033),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 28, top: 15, right: 28),
                                      child: Text("lbl_gender".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRalewayBold14))),
                              CustomTextFormField(
                                  width: 374,
                                  focusNode: FocusNode(),
                                  controller: controller.genderOneController,
                                  hintText: "lbl_female".tr,
                                  margin:
                                      getMargin(left: 20, top: 4, right: 20),
                                  variant: TextFormFieldVariant.FillGray40033,
                                  textInputAction: TextInputAction.done),
                              CustomButton(
                                  width: 348,
                                  text: "lbl_update".tr,
                                  margin: getMargin(
                                      left: 20, top: 148, right: 20, bottom: 5),
                                  padding: ButtonPadding.PaddingAll11,
                                  onTap: onBackPressed)
                            ]))))));
  }

  onBackPressed() {
    Get.back();
  }

  onTapArrowleft22() {
    Get.back();
  }

  onTapNotification19() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }
}

import 'controller/write_review_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';
import 'package:healthysense/widgets/custom_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class WriteReviewScreen extends GetWidget<WriteReviewController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(59.00),
                centerTitle: true,
                title: Container(
                    decoration: AppDecoration.gradientIndigoA700Gray8002,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AppbarImage(
                              height: getVerticalSize(20.00),
                              width: getHorizontalSize(19.00),
                              svgPath: ImageConstant.imgArrowleft,
                              margin: getMargin(left: 22, top: 15, bottom: 24),
                              onTap: onTapArrowleft17),
                          AppbarSubtitle1(
                              text: "lbl_feedback".tr,
                              margin:
                                  getMargin(left: 119, top: 18, bottom: 26)),
                          AppbarImage(
                              height: getVerticalSize(21.00),
                              width: getHorizontalSize(18.00),
                              svgPath: ImageConstant.imgNotification,
                              margin: getMargin(
                                  left: 108, top: 17, right: 33, bottom: 21),
                              onTap: onTapNotification15)
                        ])),
                styleType: Style.bgGradientIndigoA700Gray800_2),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 30, top: 54, right: 30),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgVector70x73,
                                  height: getVerticalSize(266.00),
                                  width: getHorizontalSize(258.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 30, top: 33, right: 30),
                              child: Text("msg_how_was_your_experience".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewaySemiBold18))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 30, top: 18, right: 30),
                              child: RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemSize: getVerticalSize(30.00),
                                  updateOnDrag: true,
                                  onRatingUpdate: (rating) {},
                                  itemBuilder: (context, _) {
                                    return Icon(MdiIcons.star,
                                        color: ColorConstant.blue801);
                                  }))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 31, top: 16, right: 31),
                              child: Text("lbl_comments".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewaySemiBold18))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 30, top: 16, right: 30),
                              decoration: AppDecoration.outlineBluegray4007f1
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(328.00),
                                        margin: getMargin(
                                            left: 14,
                                            top: 21,
                                            right: 10,
                                            bottom: 25),
                                        child: TextFormField(
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .descriptionController,
                                            decoration: InputDecoration(
                                                hintText:
                                                    "msg_one_of_the_most".tr,
                                                isDense: true),
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.bluegray400,
                                                fontSize: getFontSize(15),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w500)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(350.00),
                              margin: getMargin(left: 33, top: 24, right: 33),
                              child: Text("msg_would_you_recommend".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewaySemiBold18))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 33, top: 18, right: 33),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 1),
                                        child: Text("".tr)),
                                    Padding(
                                        padding: getPadding(),
                                        child: InkWell(
                                            onTap: () {
                                              controller.radioGroup.value =
                                                  "lbl_yes".tr;
                                            },
                                            child: Row(children: [
                                              SizedBox(
                                                  child: Radio<String>(
                                                      value: "lbl_yes".tr,
                                                      groupValue: controller
                                                          .radioGroup.value,
                                                      onChanged: (value) {
                                                        controller.radioGroup
                                                            .value = value!;
                                                      })),
                                              Padding(
                                                  padding: getPadding(left: 10),
                                                  child: Text("lbl_yes".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .bluegray400,
                                                          fontSize:
                                                              getFontSize(15),
                                                          fontFamily: 'Raleway',
                                                          fontWeight:
                                                              FontWeight.w500)))
                                            ]))),
                                    Padding(
                                        padding: getPadding(),
                                        child: InkWell(
                                            onTap: () {
                                              controller.radioGroup1.value =
                                                  "lbl_no".tr;
                                            },
                                            child: Row(children: [
                                              SizedBox(
                                                  child: Radio<String>(
                                                      value: "lbl_no".tr,
                                                      groupValue: controller
                                                          .radioGroup1.value,
                                                      onChanged: (value) {
                                                        controller.radioGroup1
                                                            .value = value!;
                                                      })),
                                              Padding(
                                                  padding: getPadding(left: 10),
                                                  child: Text("lbl_no".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .bluegray400,
                                                          fontSize:
                                                              getFontSize(15),
                                                          fontFamily: 'Raleway',
                                                          fontWeight:
                                                              FontWeight.w500)))
                                            ]))),
                                    Padding(
                                        padding: getPadding(left: 9),
                                        child: Text("lbl_no".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayMedium15WhiteA700))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(
                                  left: 30, top: 38, right: 30, bottom: 5),
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
                                        width: 353,
                                        text: "lbl_submit".tr,
                                        padding: ButtonPadding.PaddingAll11,
                                        onTap: onTapSubmit,
                                        alignment: Alignment.centerLeft)
                                  ])))
                    ])))));
  }

  onTapSubmit() {
    Get.toNamed(AppRoutes.doneFeedbackScreen);
  }

  onTapArrowleft17() {
    Get.back();
  }

  onTapNotification15() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }
}

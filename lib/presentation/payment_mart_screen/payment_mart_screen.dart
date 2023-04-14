import 'controller/payment_mart_controller.dart';import 'package:flutter/material.dart';import 'package:healthysense/core/app_export.dart';import 'package:healthysense/widgets/app_bar/appbar_image.dart';import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';import 'package:healthysense/widgets/custom_button.dart';import 'package:healthysense/widgets/custom_text_form_field.dart';class PaymentMartScreen extends GetWidget<PaymentMartController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(59.00), centerTitle: true, title: Container(decoration: AppDecoration.gradientIndigoA700Gray800, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [AppbarImage(height: getVerticalSize(20.00), width: getHorizontalSize(19.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 22, top: 15, bottom: 24), onTap: onTapArrowleft33), AppbarSubtitle1(text: "lbl_payment".tr, margin: getMargin(left: 126, top: 17, bottom: 17)), AppbarImage(height: getVerticalSize(21.00), width: getHorizontalSize(18.00), svgPath: ImageConstant.imgNotification, margin: getMargin(left: 111, top: 17, right: 33, bottom: 21), onTap: onTapNotification30)])), styleType: Style.bgGradientIndigoA700Gray800), body: Container(width: size.width, child: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 31, top: 38, right: 31), child: Text("lbl_payment_type".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRomanRegular15Bluegray400))), Padding(padding: getPadding(left: 29, top: 23, right: 29), child: Row(children: [])), Container(margin: getMargin(left: 29, top: 13, right: 29), decoration: AppDecoration.outlineBlack9003f12.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(left: 16, top: 10, bottom: 11), child: CommonImageView(svgPath: ImageConstant.imgTwitter33x35, height: getVerticalSize(33.00), width: getHorizontalSize(35.00))), Padding(padding: getPadding(left: 10, top: 18, bottom: 19), child: Text("msg_payment_by_easypaisa".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRomanRegular13))])), CustomTextFormField(width: 351, focusNode: FocusNode(), controller: controller.group547Controller, hintText: "msg_payment_by_credit".tr, margin: getMargin(left: 29, top: 13, right: 29), variant: TextFormFieldVariant.OutlineBlack9003f_1, fontStyle: TextFormFieldFontStyle.RalewayRomanRegular13WhiteA700, textInputAction: TextInputAction.done, prefix: Container(padding: getPadding(left: 4, top: 6, right: 4, bottom: 6), margin: getMargin(left: 15, top: 10, right: 11, bottom: 11), decoration: BoxDecoration(color: ColorConstant.blue801, borderRadius: BorderRadius.circular(getHorizontalSize(7.00))), child: CommonImageView(svgPath: ImageConstant.imgCalculator)), prefixConstraints: BoxConstraints(minWidth: getSize(21.00), minHeight: getSize(21.00))), Container(margin: getMargin(left: 29, top: 13, right: 29), decoration: AppDecoration.outlineBlack9003f12.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(left: 8, top: 4, bottom: 2), child: CommonImageView(svgPath: ImageConstant.imgVolume48x48, height: getSize(48.00), width: getSize(48.00))), Padding(padding: getPadding(left: 3, top: 17, bottom: 20), child: Text("msg_payment_by_google".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRomanRegular13))])), CustomButton(width: 354, text: "lbl_continue".tr, margin: getMargin(left: 29, top: 385, right: 29, bottom: 5), padding: ButtonPadding.PaddingAll11, fontStyle: ButtonFontStyle.RalewayRomanBold15, onTap: onTapContinue)]))))); } 
onTapContinue() { Get.toNamed(AppRoutes.confirmedPaymentMartScreen); } 
onTapArrowleft33() { Get.back(); } 
onTapNotification30() { Get.toNamed(AppRoutes.notificationsScreen); } 
 }
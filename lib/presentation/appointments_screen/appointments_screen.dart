import 'controller/appointments_controller.dart';import 'package:flutter/material.dart';import 'package:healthysense/core/app_export.dart';import 'package:healthysense/widgets/app_bar/appbar_image.dart';import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';import 'package:healthysense/widgets/custom_button.dart';class AppointmentsScreen extends GetWidget<AppointmentsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(59.00), centerTitle: true, title: Container(decoration: AppDecoration.gradientIndigoA700Gray800, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [AppbarImage(height: getVerticalSize(20.00), width: getHorizontalSize(19.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 22, top: 15, bottom: 24), onTap: onTapArrowleft9), AppbarSubtitle1(text: "lbl_timing".tr, margin: getMargin(left: 136, top: 16, bottom: 18)), AppbarImage(height: getVerticalSize(21.00), width: getHorizontalSize(18.00), svgPath: ImageConstant.imgNotification, margin: getMargin(left: 120, top: 17, right: 33, bottom: 21), onTap: onTapNotification6)])), styleType: Style.bgGradientIndigoA700Gray800), body: Container(width: size.width, child: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 33, top: 24, right: 33), child: Text("msg_21_january_friday".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayBold15))), Padding(padding: getPadding(left: 27, top: 18, right: 27), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Container(decoration: AppDecoration.fillBlue801.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(left: 12, top: 10, bottom: 9), color: ColorConstant.whiteA700, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder5), child: Container(height: getSize(21.00), width: getSize(21.00), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Stack(children: [Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(left: 10, top: 4, right: 2, bottom: 10), child: CommonImageView(svgPath: ImageConstant.imgSettings, height: getVerticalSize(12.00), width: getHorizontalSize(16.00))))]))), Padding(padding: getPadding(left: 15, top: 13, right: 75, bottom: 10), child: Text("lbl_morning".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewaySemiBold13))])), Container(margin: getMargin(left: 5), decoration: AppDecoration.outlineBluegray40030.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(left: 12, top: 10, bottom: 9), color: ColorConstant.gray102, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder5), child: Container(height: getSize(21.00), width: getSize(21.00), decoration: AppDecoration.fillGray102.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Stack(children: [Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(left: 4, top: 3, right: 4, bottom: 10), child: CommonImageView(svgPath: ImageConstant.imgRefresh14x13, height: getVerticalSize(14.00), width: getHorizontalSize(13.00))))]))), Padding(padding: getPadding(left: 15, top: 13, right: 76, bottom: 10), child: Text("lbl_evening".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewaySemiBoldBluegray400))]))])), Padding(padding: getPadding(left: 27, top: 20, right: 27), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Container(padding: getPadding(left: 22, top: 9, right: 22, bottom: 9), decoration: AppDecoration.txtFillBlue801.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder5), child: Text("lbl_11_30_am".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewaySemiBold15WhiteA700)), Container(margin: getMargin(left: 13), padding: getPadding(left: 22, top: 8, right: 22, bottom: 8), decoration: AppDecoration.txtFillBlue51.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder5), child: Text("lbl_12_30_pm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewaySemiBold15Bluegray400)), Container(margin: getMargin(left: 13), padding: getPadding(left: 24, top: 8, right: 24, bottom: 8), decoration: AppDecoration.txtFillBlue51.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder5), child: Text("lbl_1_30_pm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewaySemiBold15Bluegray400))])), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 31, top: 22, right: 31), child: Text("msg_fees_information".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayBold15))), Padding(padding: getPadding(left: 27, top: 10, right: 27), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(decoration: AppDecoration.outlineBlack9003f15.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [Padding(padding: getPadding(left: 16, top: 11, bottom: 10), child: CommonImageView(svgPath: ImageConstant.imgGroup544, height: getVerticalSize(33.00), width: getHorizontalSize(35.00))), Padding(padding: getPadding(left: 10, top: 9, bottom: 10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 10), child: Text("lbl_clinic_session".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewaySemiBold)), Padding(padding: getPadding(top: 3), child: Text("msg_complete_session".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewayRegularWhiteA700))])), Padding(padding: getPadding(left: 5, top: 18, right: 10, bottom: 19), child: Text("lbl_1000rs_session".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewaySemiBold))]))), Align(alignment: Alignment.centerLeft, child: Container(margin: getMargin(top: 10), decoration: AppDecoration.outlineBlack9003f13.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(left: 15, top: 10, bottom: 11), color: ColorConstant.gray200, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder5), child: Container(height: getSize(33.00), width: getSize(33.00), decoration: AppDecoration.fillGray200.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Stack(children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 9, top: 11, right: 8, bottom: 11), child: CommonImageView(svgPath: ImageConstant.imgVideocamera, height: getVerticalSize(11.00), width: getHorizontalSize(16.00))))]))), Padding(padding: getPadding(left: 9, top: 9, bottom: 11), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 10), child: Text("lbl_video_call".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewaySemiBoldBlack900)), Padding(padding: getPadding(top: 1), child: Text("msg_can_make_video_call".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewayRegularBluegray400))])), Padding(padding: getPadding(left: 10, top: 18, right: 7, bottom: 19), child: Text("lbl_5000rs_session".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewaySemiBoldBlue801))])))])), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 29, top: 24, right: 29), child: Text("msg_describe_your_problem".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayRomanBold15))), Container(width: double.infinity, margin: getMargin(left: 27, top: 4, right: 27), decoration: AppDecoration.outlineBluegray4007f1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(325.00), margin: getMargin(left: 11, top: 14, right: 11, bottom: 86), child: Text("msg_i_am_a_cardio_patient".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRalewayMedium15))])), CustomButton(width: 354, text: "lbl_continue".tr, margin: getMargin(left: 27, top: 215, right: 27, bottom: 5), onTap: onTapContinue)]))))); } 
onTapContinue() { Get.toNamed(AppRoutes.paymentScreen); } 
onTapArrowleft9() { Get.back(); } 
onTapNotification6() { Get.toNamed(AppRoutes.notificationsScreen); } 
 }

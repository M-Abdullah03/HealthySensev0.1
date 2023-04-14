import 'controller/prescriptions_controller.dart';
import 'models/prescriptions_model.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_title.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class PrescriptionsPage extends StatelessWidget {
  PrescriptionsController controller =
      Get.put(PrescriptionsController(PrescriptionsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
                height: getVerticalSize(58.00),
                centerTitle: true,
                title: Container(
                    decoration: AppDecoration.gradientIndigoA700Gray800,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AppbarImage(
                              height: getVerticalSize(16.00),
                              width: getHorizontalSize(19.00),
                              svgPath: ImageConstant.imgMenu,
                              margin: getMargin(left: 26, top: 16, bottom: 25),
                              onTap: toDrawer),
                          AppbarTitle(
                              text: "lbl_perscriptions".tr,
                              margin:
                                  getMargin(left: 101, top: 17, bottom: 16)),
                          AppbarImage(
                              height: getVerticalSize(21.00),
                              width: getHorizontalSize(18.00),
                              svgPath: ImageConstant.imgNotification,
                              margin: getMargin(
                                  left: 95, top: 16, right: 35, bottom: 20),
                              onTap: onTapNotification27)
                        ])),
                styleType: Style.bgGradientIndigoA700Gray800),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 14, top: 25, right: 14),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 10),
                                  child: Text("msg_prescribed_medicines".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRomanBold18)),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                margin: getMargin(right: 1),
                                                decoration: AppDecoration
                                                    .outlineGray80030
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 17,
                                                              top: 29,
                                                              bottom: 27),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgCut29x30,
                                                              height:
                                                                  getVerticalSize(
                                                                      29.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      30.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 7,
                                                              top: 21,
                                                              right: 179,
                                                              bottom: 26),
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
                                                                Padding(
                                                                    padding: getPadding(
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_pandol"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: AppStyle
                                                                            .txtRobotoBoldWhiteA700)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Text(
                                                                        "msg_3_times_per_day"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: AppStyle
                                                                            .txtRobotoRegularWhiteA700))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  toMeds();
                                                },
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 1, top: 14),
                                                    decoration: AppDecoration
                                                        .outlineGray800301
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 29,
                                                                      bottom:
                                                                          27),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgMegaphone,
                                                                  height:
                                                                      getVerticalSize(
                                                                          29.00),
                                                                  width: getHorizontalSize(
                                                                      30.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 8,
                                                                      top: 21,
                                                                      right:
                                                                          186,
                                                                      bottom:
                                                                          26),
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
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            right:
                                                                                10),
                                                                        child: Text(
                                                                            "lbl_zolaric"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            style: AppStyle.txtRobotoBoldBlack900)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1),
                                                                        child: Text(
                                                                            "msg_1_time_per_day_for"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            style: AppStyle.txtRobotoRegular))
                                                                  ]))
                                                        ])))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                margin: getMargin(
                                                    top: 16, right: 1),
                                                decoration: AppDecoration
                                                    .outlineGray800301
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 17,
                                                              top: 28,
                                                              bottom: 28),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgMegaphone29x30,
                                                              height:
                                                                  getVerticalSize(
                                                                      29.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      30.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 7,
                                                              top: 20,
                                                              right: 179,
                                                              bottom: 27),
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
                                                                Padding(
                                                                    padding: getPadding(
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_arsenic"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: AppStyle
                                                                            .txtRobotoBoldBlack900)),
                                                                Text(
                                                                    "msg_2_times_per_day"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular)
                                                              ]))
                                                    ])))
                                      ]))
                            ]))))));
  }

  toMeds() {
    Get.toNamed(AppRoutes.pharmacyMetropoleScreen);
  }

  toDrawer() {
    Get.toNamed(AppRoutes.menuDrawerScreen);
  }

  onTapNotification27() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }
}

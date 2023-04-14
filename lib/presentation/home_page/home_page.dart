import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
                child: Container(
                    decoration: AppDecoration.fillWhiteA700,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            height: getVerticalSize(126.00),
                                            width: size.width,
                                            margin: getMargin(top: 55),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgRectangle7,
                                                          height:
                                                              getVerticalSize(
                                                                  126.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  414.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 20,
                                                              top: 12,
                                                              right: 20,
                                                              bottom: 12),
                                                          decoration: AppDecoration
                                                              .outlineBlack9003f1
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                //Gesture

                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            27,
                                                                        top: 9,
                                                                        bottom:
                                                                            15),
                                                                    child: AppbarImage(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgSearch,
                                                                        height: getSize(
                                                                            15.00),
                                                                        onTap:
                                                                            gotoSearch,
                                                                        width: getSize(
                                                                            15.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 5,
                                                                        top: 5,
                                                                        right:
                                                                            266,
                                                                        bottom:
                                                                            14),
                                                                    child:
                                                                        TextButton(
                                                                      onPressed:
                                                                          () {
                                                                        Get.toNamed(
                                                                            AppRoutes.searchDoctorsScreen);
                                                                      },
                                                                      child: Text(
                                                                          "lbl_search"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtRalewayMedium15
                                                                              .copyWith(letterSpacing: 0.30)),
                                                                    ))
                                                              ])))
                                                ]))),
                                    CustomAppBar(
                                        height: getVerticalSize(60.00),
                                        leadingWidth: 40,
                                        leading: AppbarImage(
                                            height: getVerticalSize(16.00),
                                            width: getHorizontalSize(20.00),
                                            svgPath: ImageConstant.imgMenu,
                                            margin: getMargin(
                                                left: 20, top: 22, bottom: 22),
                                            onTap: onTapMenu),
                                        centerTitle: true,
                                        title: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 71, right: 12),
                                                      child: Text(
                                                          "msg_current_location"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.24)))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 1, left: 110),
                                                      child: Text(
                                                          "lbl_thu_duc_hcmc".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoMedium15
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.30))))
                                            ]),
                                        actions: [
                                          AppbarImage(
                                              height: getVerticalSize(19.00),
                                              width: getHorizontalSize(15.00),
                                              svgPath:
                                                  ImageConstant.imgLocation,
                                              margin: getMargin(
                                                  left: 31,
                                                  top: 19,
                                                  bottom: 22),
                                              onTap: tolocatio),
                                          AppbarImage(
                                              height: getVerticalSize(21.00),
                                              width: getHorizontalSize(18.00),
                                              svgPath:
                                                  ImageConstant.imgNotification,
                                              margin: getMargin(
                                                  left: 15,
                                                  top: 18,
                                                  right: 31,
                                                  bottom: 21),
                                              onTap: tonotifs)
                                        ],
                                        styleType: Style
                                            .bgGradientBlue801Deeppurple900)
                                  ])),
                          Container(
                              margin: getMargin(left: 22, top: 16, right: 22),
                              decoration: AppDecoration.outlineBlack9003f2
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder40),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 31, bottom: 22),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(right: 10),
                                                  child: Text(
                                                      "lbl_medical_checks".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: AppStyle
                                                          .txtRobotoMedium
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.40))),
                                              Container(
                                                  width:
                                                      getHorizontalSize(209.00),
                                                  margin: getMargin(top: 17),
                                                  child: Text(
                                                      "msg_check_your_health"
                                                          .tr,
                                                      maxLines: null,
                                                      style: AppStyle
                                                          .txtRobotoMedium
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.24))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 33,
                                                          top: 43,
                                                          right: 33),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgSignal,
                                                          height:
                                                              getVerticalSize(
                                                                  11.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  47.00))))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 33, bottom: 54),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgUser100x100,
                                            height: getSize(100.00),
                                            width: getSize(100.00)))
                                  ])),
                          Padding(
                              padding: getPadding(left: 22, top: 15, right: 22),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.blue801,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder40),
                                        child: Container(
                                            height: getVerticalSize(125.00),
                                            width: getHorizontalSize(171.00),
                                            decoration: AppDecoration
                                                .outlineBlack9003f2
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder40),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 28,
                                                              top: 25,
                                                              right: 28),
                                                          child: Text(
                                                              "lbl_lab_test".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: AppStyle
                                                                  .txtRobotoMedium
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.40)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 23,
                                                              top: 1,
                                                              right: 18,
                                                              bottom: 10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 6,
                                                                        bottom:
                                                                            8),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                              width: getHorizontalSize(44.00),
                                                                              margin: getMargin(left: 1, top: 40, right: 10)),
                                                                          Padding(
                                                                              padding: getPadding(top: 15),
                                                                              child: Text("lbl_see_all".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewaySemiBold.copyWith(letterSpacing: 0.30)))
                                                                        ])),
                                                                CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgQuestion,
                                                                    height:
                                                                        getVerticalSize(
                                                                            64.00),
                                                                    width: getHorizontalSize(
                                                                        52.00))
                                                              ])))
                                                ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 11),
                                        color: ColorConstant.blue801,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder40),
                                        child: Container(
                                            height: getVerticalSize(125.00),
                                            width: getHorizontalSize(171.00),
                                            decoration: AppDecoration
                                                .outlineBlack9003f3
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder40),
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 20,
                                                              right: 26,
                                                              bottom: 60),
                                                          child: Text(
                                                              "lbl_prescription"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: AppStyle
                                                                  .txtRobotoMedium
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.40)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 18,
                                                              right: 24,
                                                              bottom: 18),
                                                          child: Text(
                                                              "lbl_see_all".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: AppStyle
                                                                  .txtRalewaySemiBold
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.30)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 10,
                                                              right: 9,
                                                              bottom: 9),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgCut,
                                                              height:
                                                                  getVerticalSize(
                                                                      66.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      69.00))))
                                                ])))
                                  ])),
                          GestureDetector(
                              onTap: () {
                                onTapCatagories();
                              },
                              child: Padding(
                                  padding:
                                      getPadding(left: 22, top: 18, right: 22),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text(
                                                "msg_doctor_speciality".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayBold20Black900
                                                    .copyWith(
                                                        letterSpacing: 0.40))),
                                        Padding(
                                            padding: getPadding(bottom: 6),
                                            child: Text("lbl_see_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewaySemiBold15Blue801
                                                    .copyWith(
                                                        letterSpacing: 0.30)))
                                      ]))),
                          Padding(
                              padding: getPadding(left: 22, top: 18, right: 22),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        decoration: AppDecoration
                                            .outlineBlack9003f4
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 29,
                                                      top: 10,
                                                      right: 29),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgUser48x48,
                                                      height: getSize(48.00),
                                                      width: getSize(48.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 3,
                                                      top: 13,
                                                      right: 3,
                                                      bottom: 16),
                                                  child: Text(
                                                      "lbl_pulmonologist".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium15
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.30)))
                                            ])),
                                    Container(
                                        margin: getMargin(left: 16),
                                        decoration: AppDecoration
                                            .outlineBlack9003f4
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 8,
                                                      right: 13),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10.00)),
                                                      child: CommonImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle15,
                                                          height:
                                                              getVerticalSize(
                                                                  61.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  72.00),
                                                          fit: BoxFit.cover))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 1,
                                                      right: 13,
                                                      bottom: 18),
                                                  child: Text(
                                                      "lbl_orthopedic".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium15
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.30)))
                                            ])),
                                    Container(
                                        margin: getMargin(left: 17),
                                        decoration: AppDecoration
                                            .outlineBlack9003f4
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 28,
                                                      top: 18,
                                                      right: 28),
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgCall,
                                                      height: getVerticalSize(
                                                          36.00),
                                                      width: getHorizontalSize(
                                                          34.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 28,
                                                      top: 11,
                                                      right: 28,
                                                      bottom: 21),
                                                  child: Text("lbl_dentist".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium15
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.30)))
                                            ]))
                                  ])),
                          Padding(
                              padding: getPadding(left: 22, top: 17, right: 22),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_top_doctors".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayBold20Black900
                                                .copyWith(
                                                    letterSpacing: 0.40))),
                                    Padding(
                                        padding: getPadding(bottom: 6),
                                        child: Text("lbl_see_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewaySemiBold15Blue801
                                                .copyWith(letterSpacing: 0.30)))
                                  ])),
                          Padding(
                              padding: getPadding(left: 22, top: 17, right: 22),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        padding: getPadding(
                                            left: 22,
                                            top: 10,
                                            right: 22,
                                            bottom: 10),
                                        decoration: AppDecoration.txtFillBlue801
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder19),
                                        child: Text("lbl_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium15WhiteA700
                                                .copyWith(
                                                    letterSpacing: 0.30))),
                                    Container(
                                        margin: getMargin(left: 12),
                                        padding: getPadding(
                                            left: 15,
                                            top: 10,
                                            right: 15,
                                            bottom: 10),
                                        decoration: AppDecoration
                                            .txtOutlineBlue801
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder19),
                                        child: Text("lbl_general".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium15Blue801
                                                .copyWith(
                                                    letterSpacing: 0.30))),
                                    Container(
                                        margin: getMargin(left: 12),
                                        padding: getPadding(
                                            left: 17,
                                            top: 10,
                                            right: 17,
                                            bottom: 10),
                                        decoration: AppDecoration
                                            .txtOutlineBlue8011
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder19),
                                        child: Text("lbl_dentist".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium15Blue801
                                                .copyWith(
                                                    letterSpacing: 0.30))),
                                    Container(
                                        margin: getMargin(left: 12),
                                        padding: getPadding(
                                            left: 14,
                                            top: 9,
                                            right: 14,
                                            bottom: 9),
                                        decoration: AppDecoration
                                            .txtOutlineBlue801
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder19),
                                        child: Text("lbl_therapist".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium15Blue801
                                                .copyWith(letterSpacing: 0.30)))
                                  ]))
                        ])))));
  }

  onTapRowsearch() {
    Get.toNamed(AppRoutes.searchDoctorsScreen);
  }

  gotoSearch() {
    Get.toNamed(AppRoutes.searchDoctorsScreen);
  }

  onTapMenu() {
    Get.toNamed(AppRoutes.menuDrawerScreen);
  }

  tolocatio() {
    Get.toNamed(AppRoutes.setLocationScreen);
  }

  tonotifs() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }

  // //todoctors() {
  // Get.toNamed(AppRoutes.topDoctorsPage);
  //}

  onTapCatagories() {
    Get.toNamed(AppRoutes.specialitiesScreen);
  }
}

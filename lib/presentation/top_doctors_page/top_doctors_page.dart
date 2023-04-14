import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';

import '../top_doctors_page/widgets/top_doctors1_item_widget.dart';
import '../top_doctors_page/widgets/top_doctors_item_widget.dart';
import 'controller/top_doctors_controller.dart';
import 'models/top_doctors1_item_model.dart';
import 'models/top_doctors_item_model.dart';
import 'models/top_doctors_model.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
//import 'package:healthysense/widgets/app_bar/appbar_subtitle.dart';
//import 'package:healthysense/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TopDoctorsPage extends StatelessWidget {
  TopDoctorsController controller =
      Get.put(TopDoctorsController(TopDoctorsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
                height: getVerticalSize(60.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(16.00),
                    width: getHorizontalSize(20.00),
                    svgPath: ImageConstant.imgMenu,
                    margin: getMargin(left: 20, top: 22, bottom: 22),
                    onTap: onTapMenu),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_top_doctors".tr),
                actions: [
                  Container(
                      height: getSize(19.00),
                      width: getSize(19.00),
                      margin:
                          getMargin(left: 100, top: 21, right: 27, bottom: 20),
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        AppbarImage(
                            height: getVerticalSize(19.00),
                            width: getHorizontalSize(16.00),
                            svgPath: ImageConstant.imgNotification,
                            margin: getMargin(right: 3)),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                height: getSize(9.00),
                                width: getSize(9.00),
                                margin: getMargin(left: 10, top: 2, bottom: 8),
                                decoration: BoxDecoration(
                                    color: ColorConstant.redA400,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(4.50))))),
                        /*  AppbarSubtitle4(
                            text: "lbl_1".tr,
                            margin: getMargin(
                                left: 13, top: 1, right: 2, bottom: 8)) */
                      ]))
                ],
                styleType: Style.bgGradientIndigoA700Gray800),
            body: SingleChildScrollView(
                child: Padding(
                    padding:
                        getPadding(left: 30, top: 18, right: 30, bottom: 5),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(161.00),
                              width: getHorizontalSize(393.00),
                              child: Obx(() => ListView.builder(
                                  padding: getPadding(right: 1),
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.topDoctorsModelObj.value
                                      .topDoctorsItemList.length,
                                  itemBuilder: (context, index) {
                                    TopDoctorsItemModel model = controller
                                        .topDoctorsModelObj
                                        .value
                                        .topDoctorsItemList[index];
                                    return TopDoctorsItemWidget(model,
                                        onTapTxtBooknow: onTapTxtBooknow);
                                  }))),
                          Padding(
                              padding: getPadding(left: 1, top: 21, right: 1),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        decoration: AppDecoration
                                            .outlineBlack9003f4
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 32,
                                                      top: 2,
                                                      right: 32),
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgVector4,
                                                      height: getVerticalSize(
                                                          75.00),
                                                      width: getHorizontalSize(
                                                          80.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 32, right: 32),
                                                  child: Text(
                                                      "lbl_dr_faiza_m".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewaySemiBold15
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.30))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 32, right: 32),
                                                  child: Text(
                                                      "lbl_orthopaedic".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayMedium12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.24))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 32,
                                                      top: 3,
                                                      right: 32),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_90".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayMedium12Gray901
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.24))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 23,
                                                                bottom: 4),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgStar11,
                                                                height:
                                                                    getVerticalSize(
                                                                        11.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        13.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2,
                                                                top: 1,
                                                                bottom: 1),
                                                            child: Text(
                                                                "lbl_4_8".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.24)))
                                                      ])),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtBooknow();
                                                  },
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 32,
                                                          top: 7,
                                                          right: 32,
                                                          bottom: 7),
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 2,
                                                          right: 17,
                                                          bottom: 2),
                                                      decoration: AppDecoration
                                                          .txtFillBlue801
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtRoundedBorder5),
                                                      child: Text(
                                                          "lbl_book_now".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRalewaySemiBold12Gray101
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.24))))
                                            ])),
                                    Container(
                                        child: Container(
                                            height: getVerticalSize(161.00),
                                            width: getHorizontalSize(160.00),
                                            decoration: AppDecoration
                                                .outlineBlack9003f4
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 30,
                                                              top: 10,
                                                              right: 30,
                                                              bottom: 7),
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
                                                                Text(
                                                                    "lbl_dr_bilal_khan"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRalewaySemiBold15
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.30)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                16,
                                                                            top:
                                                                                1,
                                                                            right:
                                                                                16),
                                                                        child: Text(
                                                                            "lbl_dentist"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRalewayMedium12.copyWith(letterSpacing: 0.24)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 16, top: 4, right: 5),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 1),
                                                                              child: Text("lbl_143".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayMedium12Gray901.copyWith(letterSpacing: 0.24))),
                                                                          Padding(
                                                                              padding: getPadding(left: 18, bottom: 4),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgStar12, height: getVerticalSize(11.00), width: getHorizontalSize(13.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 2, top: 1, bottom: 1),
                                                                              child: Text("lbl_4_5".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium12.copyWith(letterSpacing: 0.24)))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: GestureDetector(
                                                                        onTap: () {
                                                                          onTapTxtBooknow();
                                                                        },
                                                                        child: Container(margin: getMargin(left: 2, top: 4), padding: getPadding(left: 17, top: 2, right: 17, bottom: 2), decoration: AppDecoration.txtFillBlue801.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder5), child: Text("lbl_book_now".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewaySemiBold12Gray101.copyWith(letterSpacing: 0.24)))))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 39,
                                                              top: 2,
                                                              right: 39,
                                                              bottom: 10),
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          40.00)),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgVector80x80,
                                                                  height:
                                                                      getSize(
                                                                          80.00),
                                                                  width: getSize(
                                                                      80.00),
                                                                  fit: BoxFit
                                                                      .cover))))
                                                ])))
                                  ])),
                          Padding(
                              padding: getPadding(left: 2, top: 21),
                              child: Obx(() => GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent:
                                              getVerticalSize(162.00),
                                          crossAxisCount: 2,
                                          mainAxisSpacing:
                                              getHorizontalSize(33.00),
                                          crossAxisSpacing:
                                              getHorizontalSize(33.00)),
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: controller.topDoctorsModelObj.value
                                      .topDoctors1ItemList.length,
                                  itemBuilder: (context, index) {
                                    TopDoctors1ItemModel model = controller
                                        .topDoctorsModelObj
                                        .value
                                        .topDoctors1ItemList[index];
                                    return TopDoctors1ItemWidget(model,
                                        onTapTxtBooknow: onTapTxtBooknow);
                                  })))
                        ])))));
  }

  onTapTxtBooknow() {
    Get.toNamed(AppRoutes.doctorPagetwoScreen);
  }

/*   onTapTxtBooknow1() {
    Get.toNamed(AppRoutes.doctorPageScreen);
  } */

  onTapMenu() {
    Get.toNamed(AppRoutes.menuDrawerScreen);
  }
}

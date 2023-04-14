import 'controller/search_doctors_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';

class SearchDoctorsScreen extends GetWidget<SearchDoctorsController> {
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
                              margin: getMargin(left: 15, top: 18, bottom: 22),
                              onTap: onTapArrowleft20),
                          AppbarSubtitle1(
                              text: "lbl_search_doctors".tr,
                              margin:
                                  getMargin(left: 101, top: 18, bottom: 17)),
                          AppbarImage(
                              height: getVerticalSize(21.00),
                              width: getHorizontalSize(18.00),
                              svgPath: ImageConstant.imgNotification,
                              margin: getMargin(
                                  left: 81, top: 18, right: 33, bottom: 21),
                              onTap: onTapNotification17)
                        ])),
                styleType: Style.bgGradientIndigoA700Gray800),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 19, top: 38, right: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    height: getVerticalSize(45.00),
                                    width: getHorizontalSize(316.00),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  margin: getMargin(right: 7),
                                                  decoration: AppDecoration
                                                      .outlineBlack9003f17
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Row(children: []))),
                                          Padding(
                                              padding: getPadding(left: 1),
                                              child: Container(
                                                  width:
                                                      getHorizontalSize(316.00),
                                                  child: TextFormField(
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .rowsearchController,
                                                    decoration: InputDecoration(
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        10.00)),
                                                            borderSide: BorderSide
                                                                .none),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        10.00)),
                                                            borderSide: BorderSide
                                                                .none),
                                                        disabledBorder: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        10.00)),
                                                            borderSide: BorderSide
                                                                .none),
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(getHorizontalSize(10.00)),
                                                            borderSide: BorderSide.none),
                                                        prefixIcon: Padding(padding: EdgeInsets.all(getHorizontalSize(15.00)), child: CommonImageView(height: getVerticalSize(20.00), width: getHorizontalSize(20.00), svgPath: ImageConstant.imgSearch)),
                                                        suffixIcon: Padding(
                                                            padding: EdgeInsets.only(right: getHorizontalSize(15.00)),
                                                            child: IconButton(
                                                                onPressed: () {
                                                                  controller
                                                                      .rowsearchController
                                                                      .clear;
                                                                },
                                                                icon: Icon(Icons.clear, color: Colors.grey.shade600))),
                                                        filled: true,
                                                        fillColor: ColorConstant.bluegray101),
                                                    onChanged:
                                                        (value) {}, /* child: Padding(padding: getPadding(left: 27, top: 14, bottom: 15), child: CommonImageView(svgPath: ImageConstant.imgSearch, height: getSize(15.00), width: getSize(15.00), child: Padding(padding: getPadding(left: 5, top: 12, right: 216, bottom: 14), child: Text("lbl_search".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtRalewayMediumBluegray400.copyWith(letterSpacing: 0.30))))) */
                                                  )))
                                        ])),
                                Container(
                                    margin: getMargin(left: 7),
                                    decoration: AppDecoration.outlineWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 11,
                                                      right: 12,
                                                      bottom: 11),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgSettings22x24,
                                                      height: getVerticalSize(
                                                          22.00),
                                                      width: getHorizontalSize(
                                                          24.00))))
                                        ]))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 31, top: 39, right: 31),
                              child: Text("lbl_suggestions".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtRalewaySemiBold15Black900))),
                      Padding(
                          padding: getPadding(left: 19, top: 9, right: 19),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(36.00),
                                        width: getHorizontalSize(352.00),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 1),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "msg_dr_mustafa_mehar"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: AppStyle
                                                                            .txtRalewayMediumBluegray400))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        352.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            17),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.bluegray40075)))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 6,
                                                          right: 10,
                                                          bottom: 10),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imageNotFound,
                                                          height:
                                                              getVerticalSize(
                                                                  6.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  5.00))))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(36.00),
                                        width: getHorizontalSize(352.00),
                                        margin: getMargin(top: 9),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 1),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_dr_musa_satti"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: AppStyle
                                                                            .txtRalewayMediumBluegray400))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        352.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            17),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.bluegray40075)))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 6,
                                                          right: 10,
                                                          bottom: 10),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imageNotFound,
                                                          height:
                                                              getVerticalSize(
                                                                  6.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  5.00))))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(35.00),
                                        width: getHorizontalSize(352.00),
                                        margin: getMargin(top: 9),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 1),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_dr_ahmed_khan"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: AppStyle
                                                                            .txtRalewayMediumBluegray400))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        352.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            16),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.bluegray40075)))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 6,
                                                          right: 10,
                                                          bottom: 10),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imageNotFound,
                                                          height:
                                                              getVerticalSize(
                                                                  6.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  5.00))))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(36.00),
                                        width: getHorizontalSize(352.00),
                                        margin: getMargin(top: 9),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 1),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_dr_sohaib_raza"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: AppStyle
                                                                            .txtRalewayMediumBluegray400))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        352.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            17),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.bluegray40075)))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 6,
                                                          right: 10,
                                                          bottom: 10),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imageNotFound,
                                                          height:
                                                              getVerticalSize(
                                                                  6.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  5.00))))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(36.00),
                                        width: getHorizontalSize(352.00),
                                        margin: getMargin(top: 9),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 1),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "lbl_dr_moiz_haroon"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: AppStyle
                                                                            .txtRalewayMediumBluegray400))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        352.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            17),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.bluegray40075)))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 6,
                                                          right: 10,
                                                          bottom: 10),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imageNotFound,
                                                          height:
                                                              getVerticalSize(
                                                                  6.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  5.00))))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(36.00),
                                        width: getHorizontalSize(352.00),
                                        margin: getMargin(top: 9),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 1),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10),
                                                                    child: Text(
                                                                        "msg_dr_muhammad_abdullah"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: AppStyle
                                                                            .txtRalewayMediumBluegray400))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: getHorizontalSize(
                                                                        352.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            17),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.bluegray40075)))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 6,
                                                          right: 10,
                                                          bottom: 10),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imageNotFound,
                                                          height:
                                                              getVerticalSize(
                                                                  6.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  5.00))))
                                            ])))
                              ]))
                    ])))));
  }

  onTapArrowleft20() {
    Get.back();
  }

  onTapNotification17() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }
}

import 'controller/check_review_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';
import 'package:healthysense/widgets/custom_button.dart';

class CheckReviewScreen extends GetWidget<CheckReviewController> {
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
                              onTap: onTapArrowleft16),
                          AppbarSubtitle1(
                              text: "lbl_reviews".tr,
                              margin: getMargin(left: 119, top: 8, bottom: 26)),
                          AppbarImage(
                              height: getVerticalSize(21.00),
                              width: getHorizontalSize(18.00),
                              svgPath: ImageConstant.imgNotification,
                              margin: getMargin(
                                  left: 124, top: 17, right: 33, bottom: 21),
                              onTap: onTapNotification14)
                        ])),
                styleType: Style.bgGradientIndigoA700Gray800_2),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 10, top: 28),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        height: getVerticalSize(42.00),
                                        width: getHorizontalSize(70.00),
                                        child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 12,
                                                          right: 17,
                                                          bottom: 12),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgStar,
                                                          height:
                                                              getSize(13.00),
                                                          width:
                                                              getSize(13.00)))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      decoration: AppDecoration
                                                          .fillBlue801
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder19),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            15,
                                                                        top: 13,
                                                                        bottom:
                                                                            16),
                                                                child: CommonImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imageNotFound,
                                                                    height:
                                                                        getSize(
                                                                            13.00),
                                                                    width: getSize(
                                                                        13.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 5,
                                                                        top: 12,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            14),
                                                                child: Text(
                                                                    "lbl_all"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.26)))
                                                          ])))
                                            ])),
                                    Container(
                                        margin: getMargin(left: 10),
                                        decoration: AppDecoration
                                            .outlineBlue8012
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder21),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 13,
                                                      bottom: 16),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar13x13,
                                                      height: getSize(13.00),
                                                      width: getSize(13.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 11,
                                                      top: 10,
                                                      right: 23,
                                                      bottom: 13),
                                                  child: Text("lbl_5".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium15Blue801
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.30)))
                                            ])),
                                    Container(
                                        margin: getMargin(left: 10),
                                        decoration: AppDecoration
                                            .outlineBlue8012
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder21),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 13,
                                                      bottom: 16),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar13x13,
                                                      height: getSize(13.00),
                                                      width: getSize(13.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 10,
                                                      right: 22,
                                                      bottom: 13),
                                                  child: Text("lbl_4".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium15Blue801
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.30)))
                                            ])),
                                    Container(
                                        margin: getMargin(left: 10),
                                        decoration: AppDecoration
                                            .outlineBlue8012
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder21),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 11,
                                                      top: 13,
                                                      bottom: 16),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar13x13,
                                                      height: getSize(13.00),
                                                      width: getSize(13.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 10,
                                                      right: 23,
                                                      bottom: 13),
                                                  child: Text("lbl_3".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium15Blue801
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.30)))
                                            ])),
                                    Container(
                                        margin: getMargin(left: 10),
                                        decoration: AppDecoration
                                            .outlineBlue8012
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder21),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 10,
                                                      top: 13,
                                                      bottom: 16),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar13x13,
                                                      height: getSize(13.00),
                                                      width: getSize(13.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 14,
                                                      top: 10,
                                                      right: 23,
                                                      bottom: 13),
                                                  child: Text("lbl_2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium15Blue801
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.30)))
                                            ])),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 10),
                                        color: ColorConstant.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: ColorConstant.blue801,
                                                width: getHorizontalSize(2.00)),
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder21),
                                        child: Container(
                                            height: getVerticalSize(42.00),
                                            width: getHorizontalSize(70.00),
                                            decoration: AppDecoration
                                                .outlineBlue8012
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder21),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 23,
                                                              top: 10,
                                                              right: 23,
                                                              bottom: 10),
                                                          child: Text(
                                                              "lbl_5".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRomanMedium15Blue801
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.30)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          decoration: AppDecoration
                                                              .outlineBlue8012
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .circleBorder21),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            17,
                                                                        top: 12,
                                                                        bottom:
                                                                            16),
                                                                    child: CommonImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgStarBlue801,
                                                                        height: getSize(
                                                                            13.00),
                                                                        width: getSize(
                                                                            13.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 7,
                                                                        top: 10,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            13),
                                                                    child: Text(
                                                                        "lbl_1"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRomanMedium15Blue801
                                                                            .copyWith(letterSpacing: 0.30)))
                                                              ])))
                                                ])))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: size.width,
                                        decoration:
                                            AppDecoration.outlineBlack9003f13,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 11,
                                                      right: 16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25.00)),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .img36498911,
                                                                      height: getSize(
                                                                          50.00),
                                                                      width: getSize(
                                                                          50.00),
                                                                      fit: BoxFit
                                                                          .cover)),
                                                              Padding(
                                                                  padding: getPadding(
                                                                      left: 16,
                                                                      top: 12,
                                                                      bottom:
                                                                          14),
                                                                  child: Text(
                                                                      "lbl_musa_haroon"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: AppStyle
                                                                          .txtRalewayBoldBlack900))
                                                            ]),
                                                        Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  64.00),
                                                          margin: getMargin(
                                                              left: 107,
                                                              top: 7,
                                                              bottom: 7),
                                                          /*  decoration: AppDecoration
                                                                .btnOutlineBlue801
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .btnCircleBorder18) */
                                                        )
                                                      ])),
                                              Container(
                                                  width:
                                                      getHorizontalSize(368.00),
                                                  margin: getMargin(
                                                      left: 14,
                                                      top: 17,
                                                      right: 14),
                                                  child: Text(
                                                      "msg_dr_jenny_is_very".tr,
                                                      maxLines: null,
                                                      style: AppStyle
                                                          .txtRalewayRegularBlack900)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 50,
                                                      top: 10,
                                                      right: 50,
                                                      bottom: 13),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text(
                                                                "lbl_938".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRalewayRegularBlack900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 29,
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_6_days_ago"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRalewayRegular))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: size.width,
                                        decoration:
                                            AppDecoration.outlineBlack9003f13,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 11,
                                                      right: 16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25.00)),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .img364989111,
                                                                      height: getSize(
                                                                          50.00),
                                                                      width: getSize(
                                                                          50.00),
                                                                      fit: BoxFit
                                                                          .cover)),
                                                              Padding(
                                                                  padding: getPadding(
                                                                      left: 16,
                                                                      top: 11,
                                                                      bottom:
                                                                          14),
                                                                  child: Text(
                                                                      "lbl_m_abdullah"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: AppStyle
                                                                          .txtRalewayBoldBlack900))
                                                            ]),
                                                        Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  64.00),
                                                          margin: getMargin(
                                                              left: 120,
                                                              top: 7,
                                                              bottom: 7),
                                                          /* decoration: AppDecoration
                                                                .btnOutlineBlue801
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .btnCircleBorder18) */
                                                        )
                                                      ])),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          373.00),
                                                      margin: getMargin(
                                                          left: 14,
                                                          top: 17,
                                                          right: 14),
                                                      child: Text(
                                                          "msg_doctors_who_are"
                                                              .tr,
                                                          maxLines: null,
                                                          style: AppStyle
                                                              .txtRalewayRegularBlack900))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 50,
                                                      top: 10,
                                                      right: 50,
                                                      bottom: 13),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text(
                                                                "lbl_809".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRalewayRegularBlack900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 28,
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_6_days_ago"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRalewayRegular))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: size.width,
                                        decoration:
                                            AppDecoration.outlineBlack9003f13,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 11,
                                                      right: 16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25.00)),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .img364989112,
                                                                      height: getSize(
                                                                          50.00),
                                                                      width: getSize(
                                                                          50.00),
                                                                      fit: BoxFit
                                                                          .cover)),
                                                              Padding(
                                                                  padding: getPadding(
                                                                      left: 16,
                                                                      top: 11,
                                                                      bottom:
                                                                          14),
                                                                  child: Text(
                                                                      "lbl_ahmed_raza"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: AppStyle
                                                                          .txtRalewayBoldBlack900))
                                                            ]),
                                                        Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  64.00),
                                                          margin: getMargin(
                                                              left: 114,
                                                              top: 7,
                                                              bottom: 7),
                                                          /* decoration: AppDecoration
                                                                .btnOutlineBlue801
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .btnCircleBorder18) */
                                                        )
                                                      ])),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          385.00),
                                                      margin: getMargin(
                                                          left: 14,
                                                          top: 17,
                                                          right: 14),
                                                      child: Text(
                                                          "msg_doctors_who_are2"
                                                              .tr,
                                                          maxLines: null,
                                                          style: AppStyle
                                                              .txtRalewayRegularBlack900))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 50,
                                                      top: 9,
                                                      right: 50,
                                                      bottom: 13),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text(
                                                                "lbl_637".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRalewayRegularBlack900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 29,
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_6_days_ago"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRalewayRegular))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: size.width,
                                        decoration:
                                            AppDecoration.outlineBlack9003f13,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 11,
                                                      right: 16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25.00)),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .img3649891150x50,
                                                                      height: getSize(
                                                                          50.00),
                                                                      width: getSize(
                                                                          50.00),
                                                                      fit: BoxFit
                                                                          .cover)),
                                                              Padding(
                                                                  padding: getPadding(
                                                                      left: 16,
                                                                      top: 11,
                                                                      bottom:
                                                                          14),
                                                                  child: Text(
                                                                      "lbl_moiz_akhtar"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: AppStyle
                                                                          .txtRalewayBoldBlack900))
                                                            ]),
                                                        Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  64.00),
                                                          margin: getMargin(
                                                              left: 122,
                                                              top: 7,
                                                              bottom: 7),
                                                          /* decoration: AppDecoration
                                                                .btnOutlineBlue801
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .btnCircleBorder18) */
                                                        )
                                                      ])),
                                              Container(
                                                  width:
                                                      getHorizontalSize(327.00),
                                                  margin: getMargin(
                                                      left: 14,
                                                      top: 17,
                                                      right: 14),
                                                  child: Text(
                                                      "msg_the_male_doctor".tr,
                                                      maxLines: null,
                                                      style: AppStyle
                                                          .txtRalewayRegularBlack900)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 50,
                                                      top: 10,
                                                      right: 50,
                                                      bottom: 13),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_547".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRalewayRegularBlack900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 30,
                                                                bottom: 1),
                                                            child: Text(
                                                                "lbl_6_days_ago"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtRalewayRegular))
                                                      ]))
                                            ])))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(
                                  left: 10, top: 38, right: 10, bottom: 5),
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
                                        text: "lbl_write_a_review".tr,
                                        margin: getMargin(left: 15),
                                        padding: ButtonPadding.PaddingAll11,
                                        onTap: onTapWriteareview,
                                        alignment: Alignment.centerLeft)
                                  ])))
                    ])))));
  }

  onTapWriteareview() {
    Get.toNamed(AppRoutes.writeReviewScreen);
  }

  onTapArrowleft16() {
    Get.back();
  }

  onTapNotification14() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }
}

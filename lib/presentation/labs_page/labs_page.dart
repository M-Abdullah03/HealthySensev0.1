import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';

import '../labs_page/widgets/labs1_item_widget.dart';
import '../labs_page/widgets/labs_item_widget.dart';
import 'controller/labs_controller.dart';
import 'models/labs1_item_model.dart';
import 'models/labs_item_model.dart';
import 'models/labs_model.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
//import 'package:healthysense/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:healthysense/widgets/app_bar/appbar_title.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class LabsPage extends StatelessWidget {
  LabsController controller = Get.put(LabsController(LabsModel().obs));

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
                              width: getHorizontalSize(20.00),
                              svgPath: ImageConstant.imgMenu,
                              margin: getMargin(left: 24, top: 19, bottom: 22),
                              onTap: onTapMenu3),
                          AppbarTitle(
                              text: "lbl_labs_in_isb".tr,
                              margin:
                                  getMargin(left: 114, top: 15, bottom: 18)),
                          AppbarImage(
                              height: getVerticalSize(21.00),
                              width: getHorizontalSize(18.00),
                              svgPath: ImageConstant.imgNotification,
                              margin: getMargin(
                                  left: 104, top: 16, right: 35, bottom: 20),
                              onTap: onTapNotification23)
                        ])),
                styleType: Style.bgGradientIndigoA700Gray800),
            body: SingleChildScrollView(
                child: Container(
                    margin: getMargin(left: 1, right: 1),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapRowsearch();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 24, top: 32, right: 23),
                                      decoration: AppDecoration
                                          .outlineBlack9003f1
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 26,
                                                    top: 16,
                                                    bottom: 14),
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgSearch,
                                                    height: getSize(15.00),
                                                    width: getSize(15.00))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 6,
                                                    top: 13,
                                                    bottom: 15),
                                                child: Text("lbl_search".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayMedium15
                                                        .copyWith(
                                                            letterSpacing:
                                                                0.30)))
                                          ])))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 30, right: 21),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(72.00),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(23.00),
                                              crossAxisSpacing:
                                                  getHorizontalSize(23.00)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.labsModelObj.value
                                          .labsItemList.length,
                                      itemBuilder: (context, index) {
                                        LabsItemModel model = controller
                                            .labsModelObj
                                            .value
                                            .labsItemList[index];
                                        return LabsItemWidget(model);
                                      })))),
                          Container(
                              width: double.infinity,
                              margin: getMargin(top: 41),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 13, top: 29, right: 13),
                                            child: Text(
                                                "msg_top_radiology_and".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanRegular14))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 5, top: 16, right: 9),
                                            child: Obx(() => ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: controller
                                                    .labsModelObj
                                                    .value
                                                    .labs1ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  Labs1ItemModel model =
                                                      controller
                                                          .labsModelObj
                                                          .value
                                                          .labs1ItemList[index];
                                                  return Labs1ItemWidget(model,
                                                      onTapViewprofile:
                                                          onTapViewprofile,
                                                      onTapBookappointmentOne:
                                                          onTapBookappointmentOne);
                                                })))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(9.00),
                                            width: size.width,
                                            margin: getMargin(top: 86),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.bluegray101)))
                                  ]))
                        ])))));
  }

  onTapViewprofile() {
    Get.toNamed(AppRoutes.viewProfileLabScreen);
  }

  onTapBookappointmentOne() {
    Get.toNamed(AppRoutes.labAppointmentScreen);
  }

  onTapRowsearch() {
    Get.toNamed(AppRoutes.searchDoctorsScreen);
  }

  onTapMenu3() {
    Get.toNamed(AppRoutes.menuDrawerScreen);
  }

  onTapNotification23() {
    Get.toNamed(AppRoutes.notificationsScreen);
  }
}

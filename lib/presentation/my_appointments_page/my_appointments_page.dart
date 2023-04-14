import 'package:healthysense/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:healthysense/widgets/app_bar/appbar_subtitle_5.dart';

import '../my_appointments_page/widgets/listvector_item_widget.dart';
import '../my_appointments_page/widgets/listvector_two_item_widget.dart';
import 'controller/my_appointments_controller.dart';
import 'models/listvector_item_model.dart';
import 'models/listvector_two_item_model.dart';
import 'models/my_appointments_model.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/app_bar/appbar_image.dart';
//import 'package:healthysense/widgets/app_bar/appbar_subtitle.dart';
//import 'package:healthysense/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:healthysense/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MyAppointmentsPage extends StatelessWidget {
  MyAppointmentsController controller =
      Get.put(MyAppointmentsController(MyAppointmentsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
                height: getVerticalSize(60.00),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getVerticalSize(16.00),
                    width: getHorizontalSize(20.00),
                    svgPath: ImageConstant.imgMenu,
                    margin: getMargin(left: 32, top: 20, bottom: 24),
                    onTap: onTapMenu1),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_my_appointments".tr),
                actions: [
                  Container(
                      height: getSize(19.00),
                      width: getSize(19.00),
                      margin:
                          getMargin(left: 74, top: 21, right: 27, bottom: 20),
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
                        AppbarSubtitle5(
                            text: "lbl_1".tr,
                            margin: getMargin(
                                left: 13, top: 1, right: 2, bottom: 8))
                      ]))
                ],
                styleType: Style.bgGradientIndigoA700Gray800),
            body: SingleChildScrollView(
                child: Padding(
                    padding:
                        getPadding(left: 30, top: 11, right: 30, bottom: 10),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 2, right: 10),
                              child: Text("lbl_pending".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayBold15)),
                          Padding(
                              padding: getPadding(top: 10),
                              child: Obx(() => ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.myAppointmentsModelObj
                                      .value.listvectorItemList.length,
                                  itemBuilder: (context, index) {
                                    ListvectorItemModel model = controller
                                        .myAppointmentsModelObj
                                        .value
                                        .listvectorItemList[index];
                                    return ListvectorItemWidget(model,
                                        onTapDrahmedk: onTapDrahmedk,
                                        onTapCancel: onTapCancel,
                                        onTapReschedule: onTapReschedule);
                                  }))),
                          Padding(
                              padding: getPadding(left: 1, top: 9, right: 10),
                              child: Text("lbl_done".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayBold15)),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 1, top: 15, right: 1),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .myAppointmentsModelObj
                                          .value
                                          .listvectorTwoItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListvectorTwoItemModel model =
                                            controller
                                                .myAppointmentsModelObj
                                                .value
                                                .listvectorTwoItemList[index];
                                        return ListvectorTwoItemWidget(model,
                                            onTapTxtLeavereview:
                                                onTapTxtLeavereview);
                                      }))))
                        ])))));
  }

  onTapDrahmedk() {
    Get.toNamed(AppRoutes.appointmentScreen);
  }

  onTapCancel() {
    Get.toNamed(AppRoutes.cancelAppointmentScreen);
  }

  onTapReschedule() {
    Get.toNamed(AppRoutes.rescheduleAppointmentScreen);
  }

  onTapTxtLeavereview() {
    Get.toNamed(AppRoutes.writeReviewScreen);
  }

  onTapMenu1() {
    Get.toNamed(AppRoutes.menuDrawerScreen);
  }
}

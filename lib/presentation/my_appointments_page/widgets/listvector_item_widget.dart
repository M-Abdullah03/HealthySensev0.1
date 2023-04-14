import '../controller/my_appointments_controller.dart';
import '../models/listvector_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListvectorItemWidget extends StatelessWidget {
  ListvectorItemWidget(this.listvectorItemModelObj,
      {this.onTapDrahmedk, this.onTapCancel, this.onTapReschedule});

  ListvectorItemModel listvectorItemModelObj;

  var controller = Get.find<MyAppointmentsController>();

  VoidCallback? onTapDrahmedk;

  VoidCallback? onTapCancel;

  VoidCallback? onTapReschedule;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapDrahmedk!();
      },
      child: Container(
        margin: getMargin(
          top: 4.5,
          right: 1,
          bottom: 4.5,
        ),
        decoration: AppDecoration.outlineBlack9003f8.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 13,
                  top: 22,
                  right: 13,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          42.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgVector3,
                        height: getSize(
                          84.00,
                        ),
                        width: getSize(
                          84.00,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                        bottom: 13,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              right: 10,
                            ),
                            child: Text(
                              "lbl_dr_ahmed_k".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold15,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                              right: 10,
                            ),
                            child: Text(
                              "lbl_in_clinic".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayMedium12.copyWith(
                                letterSpacing: 0.24,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 6,
                            ),
                            child: Text(
                              "msg_11_30_am_12_30".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayMedium12.copyWith(
                                letterSpacing: 0.24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 11,
                        bottom: 60,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgStar113x13,
                        height: getSize(
                          13.00,
                        ),
                        width: getSize(
                          13.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 11,
                        bottom: 57,
                      ),
                      child: Text(
                        "lbl_4_8".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoMedium12.copyWith(
                          letterSpacing: 0.24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(
                  left: 40,
                  top: 11,
                  right: 40,
                  bottom: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomButton(
                      width: 95,
                      text: "lbl_cancel".tr,
                      shape: ButtonShape.RoundedBorder5,
                      padding: ButtonPadding.PaddingAll3,
                      fontStyle: ButtonFontStyle.RalewaySemiBold12,
                      onTap: onTapCancel,
                    ),
                    CustomButton(
                      width: 95,
                      text: "lbl_reschedule".tr,
                      margin: getMargin(
                        left: 19,
                      ),
                      shape: ButtonShape.RoundedBorder5,
                      padding: ButtonPadding.PaddingAll3,
                      fontStyle: ButtonFontStyle.RalewaySemiBold12,
                      onTap: onTapReschedule,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import '../controller/top_doctors_controller.dart';
import '../models/top_doctors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';

// ignore: must_be_immutable
class TopDoctorsItemWidget extends StatelessWidget {
  TopDoctorsItemWidget(this.topDoctorsItemModelObj, {this.onTapTxtBooknow});

  TopDoctorsItemModel topDoctorsItemModelObj;

  var controller = Get.find<TopDoctorsController>();

  VoidCallback? onTapTxtBooknow;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 31,
        ),
        decoration: AppDecoration.outlineBlack9003f4.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                106.00,
              ),
              width: getHorizontalSize(
                92.00,
              ),
              margin: getMargin(
                left: 33,
                top: 2,
                right: 33,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_dr_john_doe".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewaySemiBold15.copyWith(
                                letterSpacing: 0.30,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 1,
                              right: 10,
                            ),
                            child: Text(
                              "lbl_neurologist".tr,
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
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 3,
                        right: 10,
                        bottom: 10,
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgVector75x80,
                        height: getVerticalSize(
                          75.00,
                        ),
                        width: getHorizontalSize(
                          80.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(
                  left: 30,
                  top: 3,
                  right: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Text(
                        "lbl_99".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayMedium12Gray901.copyWith(
                          letterSpacing: 0.24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 23,
                        bottom: 4,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgStar1,
                        height: getVerticalSize(
                          11.00,
                        ),
                        width: getHorizontalSize(
                          13.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 2,
                        top: 1,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_4_95".tr,
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
            GestureDetector(
              onTap: () {
                onTapTxtBooknow!();
              },
              child: Container(
                margin: getMargin(
                  left: 33,
                  top: 6,
                  right: 33,
                  bottom: 7,
                ),
                padding: getPadding(
                  left: 17,
                  top: 2,
                  right: 17,
                  bottom: 2,
                ),
                decoration: AppDecoration.txtFillBlue801.copyWith(
                  borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                ),
                child: Text(
                  "lbl_book_now".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewaySemiBold12Gray101.copyWith(
                    letterSpacing: 0.24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import '../controller/top_doctors_controller.dart';
import '../models/top_doctors1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';

// ignore: must_be_immutable
class TopDoctors1ItemWidget extends StatelessWidget {
  TopDoctors1ItemWidget(this.topDoctors1ItemModelObj, {this.onTapTxtBooknow});

  TopDoctors1ItemModel topDoctors1ItemModelObj;

  var controller = Get.find<TopDoctorsController>();

  VoidCallback? onTapTxtBooknow;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9003f4.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 31,
              top: 3,
              right: 31,
            ),
            child: CommonImageView(
              imagePath: ImageConstant.imgVector70x80,
              height: getVerticalSize(
                70.00,
              ),
              width: getHorizontalSize(
                80.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 31,
              top: 1,
              right: 27,
            ),
            child: Text(
              "lbl_dr_amna_irum".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewaySemiBold15.copyWith(
                letterSpacing: 0.30,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 31,
              top: 1,
              right: 31,
            ),
            child: Text(
              "lbl_dermatologist".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRalewayMedium12.copyWith(
                letterSpacing: 0.24,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: getPadding(
                left: 35,
                top: 3,
                right: 35,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      "lbl_234".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayMedium12Gray901.copyWith(
                        letterSpacing: 0.24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 17,
                      bottom: 4,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgStar13,
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
          GestureDetector(
            onTap: () {
              onTapTxtBooknow!();
            },
            child: Container(
              margin: getMargin(
                left: 31,
                top: 6,
                right: 31,
                bottom: 6,
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
    );
  }
}

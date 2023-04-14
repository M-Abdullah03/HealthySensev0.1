import '../controller/my_appointments_controller.dart';
import '../models/listvector_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';

// ignore: must_be_immutable
class ListvectorTwoItemWidget extends StatelessWidget {
  ListvectorTwoItemWidget(this.listvectorTwoItemModelObj,
      {this.onTapTxtLeavereview});

  ListvectorTwoItemModel listvectorTwoItemModelObj;

  var controller = Get.find<MyAppointmentsController>();

  VoidCallback? onTapTxtLeavereview;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 5.0,
          bottom: 5.0,
        ),
        decoration: AppDecoration.outlineBlack9003f8.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                left: 11,
                top: 24,
                bottom: 16,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    42.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgVector70x80,
                  height: getSize(
                    84.00,
                  ),
                  width: getSize(
                    84.00,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 12,
                top: 23,
                bottom: 19,
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
                      "lbl_dr_amna_irum".tr,
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
                      "lbl_online_session".tr,
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
                      "msg_11_30_am_12_302".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayMedium12.copyWith(
                        letterSpacing: 0.24,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapTxtLeavereview!();
                    },
                    child: Padding(
                      padding: getPadding(
                        top: 5,
                        right: 10,
                      ),
                      child: Text(
                        "lbl_leave_review".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayMediumBlue801.copyWith(
                          letterSpacing: 0.24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 15,
                top: 33,
                bottom: 78,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgStar110,
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
                left: 2,
                top: 33,
                right: 20,
                bottom: 75,
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
    );
  }
}

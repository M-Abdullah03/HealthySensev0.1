import '../controller/labs_controller.dart';
import '../models/labs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';

// ignore: must_be_immutable
class LabsItemWidget extends StatelessWidget {
  LabsItemWidget(this.labsItemModelObj);

  LabsItemModel labsItemModelObj;

  var controller = Get.find<LabsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getVerticalSize(
          71.00,
        ),
        width: getHorizontalSize(
          172.00,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: AppDecoration.outlineGray40019.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: getVerticalSize(
                          68.00,
                        ),
                        width: getHorizontalSize(
                          55.00,
                        ),
                        margin: getMargin(
                          right: 117,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.blue801,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              getHorizontalSize(
                                15.00,
                              ),
                            ),
                            bottomLeft: Radius.circular(
                              getHorizontalSize(
                                15.00,
                              ),
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.gray40019,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
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
                  left: 15,
                  top: 18,
                  right: 15,
                  bottom: 18,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CommonImageView(
                      svgPath: ImageConstant.imgLocation,
                      height: getVerticalSize(
                        31.00,
                      ),
                      width: getHorizontalSize(
                        25.00,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        58.00,
                      ),
                      margin: getMargin(
                        left: 27,
                        top: 1,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_labs_near_me".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanBold15,
                      ),
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

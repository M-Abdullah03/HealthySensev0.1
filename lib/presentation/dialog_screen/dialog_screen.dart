import 'controller/dialog_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/widgets/custom_button.dart';

class DialogScreen extends GetWidget<DialogController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Container(
                          width: getHorizontalSize(282.00),
                          margin: getMargin(
                              left: 66, top: 323, right: 66, bottom: 5),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 11, top: 11, right: 11),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_confirm_payment"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRomanMedium1904
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.15,
                                                                    height:
                                                                        1.21)),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top: 11,
                                                                        right:
                                                                            1),
                                                                child: Text(
                                                                    "msg_this_process_cannot"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRomanRegular1025
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.07,
                                                                            height:
                                                                                1.27))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 37, bottom: 44),
                                                  child: InkWell(
                                                      onTap: () {
                                                        onBackPressed();
                                                      },
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgClose,
                                                          height:
                                                              getSize(17.00),
                                                          width:
                                                              getSize(17.00))))
                                            ]))),
                                CustomButton(
                                    width: 242,
                                    text: "lbl_yes".tr,
                                    margin:
                                        getMargin(left: 11, top: 29, right: 11),
                                    padding: ButtonPadding.PaddingAll11,
                                    fontStyle:
                                        ButtonFontStyle.RalewayRomanBold15,
                                    onTap: onTapYes,
                                    alignment: Alignment.center),
                                CustomButton(
                                    width: 242,
                                    text: "lbl_no".tr,
                                    margin: getMargin(
                                        left: 11,
                                        top: 12,
                                        right: 11,
                                        bottom: 5),
                                    variant: ButtonVariant.OutlineBlue801,
                                    padding: ButtonPadding.PaddingAll11,
                                    fontStyle: ButtonFontStyle
                                        .RalewayRomanBold15Gray900,
                                    onTap: onBackPressed,
                                    alignment: Alignment.center)
                              ]))
                    ])))));
  }

  onBackPressed() {
    Get.back();
    Get.back();
  }

  onTapYes() {
    Get.toNamed(AppRoutes.donePaymentScreen);
  }
}

import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({required this.text, this.margin, this.onTapp});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTapp;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapp!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtRobotoRomanBold20.copyWith(
            color: ColorConstant.whiteA700,
          ),
        ),
      ),
    );
  }
}

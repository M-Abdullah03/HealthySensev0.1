import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar(
      {required this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions});

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgGradientIndigoA700Gray800:
        return Container(
          height: getVerticalSize(
            63.00,
          ),
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                -3.061615391143663e-17,
              ),
              end: Alignment(
                0.49999999999999956,
                1.2602041268543585,
              ),
              colors: [
                ColorConstant.indigoA700,
                ColorConstant.gray800,
              ],
            ),
          ),
        );
      case Style.bgGradientIndigoA700Gray800_2:
        return Container(
          height: getVerticalSize(
            59.00,
          ),
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                -3.0616171314629196e-17,
              ),
              end: Alignment(
                0.5,
                0.9999999999999999,
              ),
              colors: [
                ColorConstant.indigoA700,
                ColorConstant.gray800,
              ],
            ),
          ),
        );
      case Style.bgGradientIndigoA700Gray800_1:
        return Container(
          height: getVerticalSize(
            59.00,
          ),
          width: size.width,
          margin: getMargin(
            right: 1,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                0,
              ),
              end: Alignment(
                0.5,
                1.26,
              ),
              colors: [
                ColorConstant.indigoA700,
                ColorConstant.gray800,
              ],
            ),
          ),
        );
      case Style.bgGradientBlue801Deeppurple900:
        return Container(
          height: getVerticalSize(
            60.00,
          ),
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                -3.0616171314629196e-17,
              ),
              end: Alignment(
                0.5,
                0.9999999999999999,
              ),
              colors: [
                ColorConstant.blue801,
                ColorConstant.deepPurple900,
              ],
            ),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgGradientIndigoA700Gray800,
  bgGradientIndigoA700Gray800_2,
  bgGradientIndigoA700Gray800_1,
  bgGradientBlue801Deeppurple900,
}

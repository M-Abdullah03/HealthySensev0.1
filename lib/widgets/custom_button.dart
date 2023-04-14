import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case ButtonPadding.PaddingAll3:
        return getPadding(
          all: 3,
        );
      case ButtonPadding.PaddingAll17:
        return getPadding(
          all: 17,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlue801:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.blue801;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillIndigoA700ce:
        return ColorConstant.indigoA700Ce;
      case ButtonVariant.OutlineBlack900:
        return ColorConstant.whiteA700;
      case ButtonVariant.GradientIndigoA700Gray800:
        return null;
      default:
        return ColorConstant.blue801;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBlue801:
        return Border.all(
          color: ColorConstant.blue801,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineBlack900:
        return Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillBlue801:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillIndigoA700ce:
      case ButtonVariant.GradientIndigoA700Gray800:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      case ButtonShape.CircleBorder18:
        return BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        );
      case ButtonShape.CircleBorder21:
        return BorderRadius.circular(
          getHorizontalSize(
            21.13,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.GradientIndigoA700Gray800:
        return LinearGradient(
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
        );
      case ButtonVariant.FillBlue801:
      case ButtonVariant.OutlineBlue801:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillIndigoA700ce:
      case ButtonVariant.OutlineBlack900:
        return null;
      default:
        return null;
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case ButtonVariant.FillBlue801:
      case ButtonVariant.OutlineBlue801:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillIndigoA700ce:
      case ButtonVariant.GradientIndigoA700Gray800:
      case ButtonVariant.OutlineBlack900:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.RalewayRomanBold15:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RalewayRomanBold15Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RobotoRomanMedium8:
        return TextStyle(
          color: ColorConstant.blue801,
          fontSize: getFontSize(
            8,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RalewayBold10:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RalewaySemiBold12:
        return TextStyle(
          color: ColorConstant.gray101,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.RobotoRomanMedium15:
        return TextStyle(
          color: ColorConstant.blue801,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoRomanMedium13:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoRomanRegular14:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoRomanRegular14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder10,
  RoundedBorder5,
  CircleBorder18,
  CircleBorder21,
}
enum ButtonPadding {
  PaddingAll8,
  PaddingAll11,
  PaddingAll3,
  PaddingAll17,
}
enum ButtonVariant {
  FillBlue801,
  OutlineBlue801,
  OutlineBlack9003f,
  FillWhiteA700,
  FillIndigoA700ce,
  GradientIndigoA700Gray800,
  OutlineBlack900,
}
enum ButtonFontStyle {
  RalewayBold20,
  RalewayRomanBold15,
  RalewayRomanBold15Gray900,
  RobotoRomanMedium8,
  RalewayBold10,
  RalewaySemiBold12,
  RobotoRomanMedium15,
  RobotoRomanMedium13,
  RobotoRomanRegular14,
  RobotoRomanRegular14WhiteA700,
}

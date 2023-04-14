import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:healthysense/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(22),
        width: getHorizontalSize(43),
        toggleSize: 14,
        borderRadius: getHorizontalSize(
          11.00,
        ),
        switchBorder: Border.all(
          color: ColorConstant.indigoA700,
          width: getHorizontalSize(
            1.00,
          ),
        ),
        activeColor: ColorConstant.indigoA700,
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor: ColorConstant.whiteA700,
        inactiveToggleColor: ColorConstant.blue800,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}

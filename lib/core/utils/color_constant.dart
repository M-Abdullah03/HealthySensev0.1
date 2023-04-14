import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray90099 = fromHex('#99172331');

  static Color gray7006b = fromHex('#6b595959');

  static Color black9003f = fromHex('#3f000000');

  static Color green700 = fromHex('#13aa19');

  static Color lightBlue900 = fromHex('#0e698d');

  static Color bluegray40030 = fromHex('#308c8fa5');

  static Color bluegray40075 = fromHex('#758c8fa5');

  static Color amberA700 = fromHex('#ffa600');

  static Color gray40019 = fromHex('#19bebebe');

  static Color gray70038 = fromHex('#38565656');

  static Color gray70035 = fromHex('#35646464');

  static Color gray800 = fromHex('#454545');

  static Color gray200 = fromHex('#efefef');

  static Color blue50 = fromHex('#e8f5ff');

  static Color blue51 = fromHex('#e9f5fa');

  static Color indigo400 = fromHex('#555fd2');

  static Color gray600D3 = fromHex('#d37a7a7b');

  static Color bluegray402 = fromHex('#888888');

  static Color indigoA700 = fromHex('#0045f3');

  static Color bluegray401 = fromHex('#858688');

  static Color bluegray400 = fromHex('#8c8fa5');

  static Color bluegray4007f = fromHex('#7f858588');

  static Color whiteA700 = fromHex('#ffffff');

  static Color cyan400 = fromHex('#35a2cd');

  static Color indigo600 = fromHex('#395693');

  static Color whiteA700D3 = fromHex('#d3ffffff');

  static Color gray51 = fromHex('#fbfbfb');

  static Color lightBlue90099 = fromHex('#990e698d');

  static Color gray8009b = fromHex('#9b3a3a3a');

  static Color deepPurple900 = fromHex('#0400dd');

  static Color blue80063 = fromHex('#632753c3');

  static Color bluegray40099 = fromHex('#998c8fa5');

  static Color lightBlue600 = fromHex('#00a7e7');

  static Color gray50 = fromHex('#f4f9fb');

  static Color black900 = fromHex('#000000');

  static Color redA400 = fromHex('#ff2020');

  static Color gray40033 = fromHex('#33bebebe');

  static Color gray60044 = fromHex('#44797979');

  static Color gray700 = fromHex('#625c5e');

  static Color blue801 = fromHex('#2854c3');

  static Color gray500 = fromHex('#979797');

  static Color gray901 = fromHex('#172331');

  static Color blue800 = fromHex('#2956c9');

  static Color gray900 = fromHex('#1a1a1a');

  static Color bluegray100 = fromHex('#d1d1d1');

  static Color teal50 = fromHex('#d4edf7');

  static Color gray101 = fromHex('#f3f8fa');

  static Color gray102 = fromHex('#f2f2f2');

  static Color gray100 = fromHex('#f3f4f8');

  static Color gray80030 = fromHex('#304f4f4f');

  static Color bluegray700 = fromHex('#52575c');

  static Color bluegray4007f1 = fromHex('#7f8c8fa5');

  static Color bluegray102 = fromHex('#cecfd7');

  static Color indigoA700Ce = fromHex('#ce0048ff');

  static Color bluegray101 = fromHex('#d9d9d9');

  static Color indigo700 = fromHex('#303f9f');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

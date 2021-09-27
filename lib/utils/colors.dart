import 'package:flutter/material.dart';

class AppColors {
  static final MaterialColor MAIN = _factoryColor(0xff2B3340);

  static final MaterialColor SUB = _factoryColor(0xff666666);

  static final MaterialColor POINT = _factoryColor(0xff333333);

  static final MaterialColor LIGHT = _factoryColor(0xfff4f4f8);

  static final MaterialColor DARK = _factoryColor(0xff3a3a3a);

  static final MaterialColor GREY = _factoryColor(0xffd8d8d8);

  static final MaterialColor WHITE = _factoryColor(0xffffffff);

  static final MaterialColor BACKGROUND = _factoryColor(0xfff4f4f8);

  static final MaterialColor SHADOW = _factoryColor(0xffE7EAF0);

  static final MaterialColor LINE = _factoryColor(0xD4D4D4);

  static MaterialColor hex(String hex) => AppColors._factoryColor(AppColors._getColorHexFromStr(hex));

  static MaterialColor _factoryColor(int color) {
    return MaterialColor(color, <int, Color>{
      50: Color(color),
      100: Color(color),
      200: Color(color),
      300: Color(color),
      400: Color(color),
      500: Color(color),
      600: Color(color),
      700: Color(color),
      800: Color(color),
      900: Color(color),
    });
  }

  static int _getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        val = 0xFFFFFFFF;
      }
    }
    return val;
  }
}

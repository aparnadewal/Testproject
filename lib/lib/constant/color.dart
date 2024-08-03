import 'package:flutter/material.dart';

class AppColor {
  ///////////primary////////
  static Color primaryColor = Color(0xff38299E);
  // static Color primaryColor = Color(0xffb43987);
  static Color textColor = Colors.white;
  static Color background = const Color(0xff99989E);
  static Color divider = Color(0xffF3F3F3);
  static Color bgContainer = Color(0xffF3F3F3);
  static Color secondaryButton = Color(0xff22211D);
  static Color statusBarColor = Color.fromARGB(255, 247, 247, 247);

  static Color shimmerBaseColor = Color(0xffF3F3F3);
  static Color shimmerhighlightColor = Color(0xffD9D9D9);

  // static Color lightgrey = Colors.grey.shade100;
  static Color grey = Color(0xffD9D9D9);
  static Color grey300 = Colors.grey.shade300;
  static Color darkgrey = Colors.grey.shade700;
  static Color red = Color(0xffE10000);
  static Color green = Colors.green; //E2E0E0
  // static Color container = Color(0xffE2E0E0);

//////////////Dark Theme////////////E6E6FA
  static Color black = Colors.black;
  static Color white = Colors.white;

///////////Gradients/////////#198754
//   static Color containercolor = Color(0xffDEDEDE);//EDEFF4
//   static Color kidscontainer = Color(0xffD6CBC9);
//   static Color footcontainer = Color(0xffA8A9AB);
  static Color Otpbox = Color(0xffD4E0FF);

  //
  static Color colorsChoice_1 = Color(0xffE6E6FA); //E6E6FA
  static Color colorsChoice_2 = Color(0xffF5F5F5);
  static Color colorsChoice_3 = Color(0xffB0C4DE);
  static Color colorsChoice_4 = Color(0xffEBACA2); //E6E6FA
  static Color colorsChoice_5 = Color(0xffADD8E65);
  static Color colorsChoice_6 = Color(0xffFFC0CB);
  static Color colorsChoice_7 = Color(0xff9FD9F2); //E6E6FA
  static Color colorsChoice_8 = Color(0xffF5DEB3);
  static Color colorsChoice_9 = Color(0xffFFE4E1); //FF4C3B
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

import 'package:flutter/material.dart';

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    String modifiedHexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (modifiedHexColor.length == 6) {
      modifiedHexColor = 'FF$modifiedHexColor';
    }
    return int.parse(modifiedHexColor, radix: 16);
  }
}

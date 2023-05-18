import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#727272');

  static Color gray400 = fromHex('#bcbcbc');

  static Color gray500 = fromHex('#a9a9a9');

  static Color blueGray400 = fromHex('#8e8c8c');

  static Color gray900 = fromHex('#242424');

  static Color gray90001 = fromHex('#252525');

  static Color blueA200 = fromHex('#3584ff');

  static Color green800 = fromHex('#03aa00');

  static Color black9003f = fromHex('#3f000000');

  static Color gray100 = fromHex('#f2f2f7');

  static Color black90001 = fromHex('#020202');

  static Color greenA700 = fromHex('#04d300');

  static Color black900 = fromHex('#000000');

  static Color deepOrangeA700 = fromHex('#d32600');

  static Color blueGray900 = fromHex('#343434');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

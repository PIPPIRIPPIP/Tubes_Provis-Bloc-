import 'package:flutter/material.dart';
import 'package:ayesha_s_application3/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillBlueA200 => BoxDecoration(
        color: ColorConstant.blueA200,
      );
  static BoxDecoration get txtFillBlueA200 => BoxDecoration(
        color: ColorConstant.blueA200,
      );
  static BoxDecoration get outlineGray400 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray4003 => BoxDecoration(
        color: ColorConstant.blueA200,
        border: Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray4002 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray4001 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9003f1 => BoxDecoration(
        color: ColorConstant.blueA200,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtOutlineGray400 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineBlueA200 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueA200,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder7 = BorderRadius.circular(
    getHorizontalSize(
      7,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

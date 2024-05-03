import 'package:flutter/material.dart';

import '../config/theme.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color,
    {bool isUnderlined = false, double? height, double? letterSpacing}) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    decoration: isUnderlined ? TextDecoration.underline : null,
    height: height,
    letterSpacing: letterSpacing,
    fontWeight: fontWeight,
  );
}

// regular style

TextStyle getRegularStyle({
  double fontSize = 12.0,
  required Color color,
  bool isUnderline = false,
  double? lineSpacing,
  double? letterSpacing,
}) {
  return _getTextStyle(
    fontSize,
    FontWeight.w400,
    color,
    height: lineSpacing,
    letterSpacing: letterSpacing,
    isUnderlined: isUnderline,
  );
}

TextStyle getErrorStyle({
  double fontSize = 14.0,
  Color color = Colors.red,
  bool isUnderline = false,
  double? lineSpacing,
  double? letterSpacing,
}) {
  return _getTextStyle(
    fontSize,
    FontWeight.w500,
    color,
    height: lineSpacing,
    letterSpacing: letterSpacing,
    isUnderlined: isUnderline,
  );
}

/* extStyle getBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
  bool isUnderline = false,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamilyOmnes,
    FontWeightManager.bold,
    color,
    isUnderlined: isUnderline,
  );
} */

// semi bold text style

/* TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
  double? lineSpacing,
  bool isUnderline = false,
  double? letterSpacing,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamilyOmnes,
    FontWeightManager.semiBold,
    color,
    height: lineSpacing,
    letterSpacing: letterSpacing,
    isUnderlined: isUnderline,
  );
} */

// medium text style

TextStyle getMediumStyle({
  double fontSize = 12.0,
  Color color = AppColors.appBlack,
  bool isUnderline = false,
  double? lineSpacing,
  double? letterSpacing,
}) {
  return _getTextStyle(
    fontSize,
    FontWeight.w500,
    color,
    height: lineSpacing,
    letterSpacing: letterSpacing,
    isUnderlined: isUnderline,
  );
}

TextStyle getSemiBoldStyle({
  double fontSize = 12.0,
  required Color color,
  bool isUnderline = false,
  double? lineSpacing,
  double? letterSpacing,
}) {
  return _getTextStyle(
    fontSize,
    FontWeight.w600,
    color,
    height: lineSpacing,
    letterSpacing: letterSpacing,
    isUnderlined: isUnderline,
  );
}

TextStyle getSmallStyle({
  double fontSize = 10.0,
  Color color = AppColors.appBlack,
  FontWeight fontWeight = FontWeight.w400,
  bool isUnderline = false,
  double? lineSpacing,
  double? letterSpacing,
}) {
  return _getTextStyle(
    fontSize,
    fontWeight,
    color,
    height: lineSpacing,
    letterSpacing: letterSpacing,
    isUnderlined: isUnderline,
  );
}

TextStyle getUltraSmallStyle({
  double fontSize = 8.0,
  Color color = AppColors.appBlack,
  bool isUnderline = false,
  FontWeight fontWeight = FontWeight.w500,
  double? lineSpacing,
  double? letterSpacing,
}) {
  return _getTextStyle(
    fontSize,
    fontWeight,
    color,
    height: lineSpacing,
    letterSpacing: letterSpacing,
    isUnderlined: isUnderline,
  );
}

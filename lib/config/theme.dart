import 'package:dashboardtest/config/typography.dart';
import 'package:dashboardtest/helper/size_config.dart';
import 'package:flutter/material.dart';

import '../helper/locator.dart';

ThemeData lightTheme(BuildContext context) {
  final SizeConfig sizeConfig = locator<SizeConfig>();
  return ThemeData(
    primaryColor: AppColors.appPrimaryColor,
    /* inputDecorationTheme: InputDecorationTheme(
      border: outlineBorder(context),
      focusedBorder: focusBorder(context),
    ), */

    disabledColor: AppColors.appGrey,
    iconTheme: const IconThemeData(color: AppColors.appPrimary),
    scaffoldBackgroundColor: AppColors.appBackgroundColor,
    appBarTheme: const AppBarTheme(
      shadowColor: Colors.transparent,
      color: Colors.transparent,
      iconTheme: IconThemeData(
        color: AppColors.appPrimary,
      ),
    ),
    colorScheme: const ColorScheme.light(
      // brightness: Brightness.dark,
      background: AppColors.appBackgroundColor,
      surface: AppColors.appSurfaceColor,
      onBackground: AppColors.appOnBackgroundColor,
      onSurface: AppColors.appOnBackgroundColor,
      primary: AppColors.appPrimaryColor,
      onPrimary: AppColors.appOnPrimaryColor,
      secondary: AppColors.appSecondaryColor,
      onSecondary: AppColors.appOnSecondaryColor,
      error: AppColors.appErrorColor,
      onError: AppColors.appOnErrorColor,
    ).copyWith(secondary: AppColors.appSecondary),
    textTheme: lightTextTheme(),
  );
}

class AppColors {
  //FFFFFBFA
  static const appWhite = Color(0xFFFFFBFA);
  static const appShimmerBackground = Color(0xFFFFDBDA);
  static const appShadow = Color(0xFFB0CCE1);
  static const appRed = Colors.red; //Color(0xFFe74c3c);
  static const appGreen = Color(0xFF1B7D0B);
  static const appBlack = Color(0xFF4F4F4F);
  static const appGrey = Color(0xFFB5B1B2);
  static const appTextBlack = Color(0xFF1a1a1a);
  static const appTransparent = Colors.transparent;
  static const appPrimary = Color.fromARGB(255, 255, 255, 255);
  static const appSecondary = Color(0xFF8596e7); //Color(0xFFB63F67);
  static const appPrimaryVariant = Colors.purple;
  static const appSecondaryVariant = Colors.deepPurpleAccent;
  //*Background/Surface Colors
  static const appBackgroundColor = appWhite;
  static const appSurfaceColor = appWhite;
  static const appOnBackgroundColor = appBlack;
  //*App Error colors
  static const appErrorColor = appRed;
  static const appOnErrorColor = appWhite;
  //**App Primary Colors
  static const appPrimaryColor = appPrimary;
  static const appPrimaryVariantColor = appPrimaryVariant;
  static const appOnPrimaryColor = appWhite;
  //**App Secondary Colors
  static const appSecondaryColor = appSecondary;
  static const appSecondaryVariantColor = appSecondaryVariant;
  static const appOnSecondaryColor = appWhite;
  //**App Disabled Colors
  static const appDisableColor = appGrey;
}

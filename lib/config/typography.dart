import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

// Project imports:
import '../../helper/locator.dart';
import 'theme.dart';

TextTheme lightTextTheme() {
  return TextTheme(
    headlineMedium: GoogleFonts.poppins(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: AppColors.appBlack,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: AppColors.appBlack,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.appBlack,
      letterSpacing: 0.15,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.appPrimary,
      letterSpacing: 0.1,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.50,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 12, //reduced from 14
      fontWeight: FontWeight.w400,
      color: AppColors.appBlack,
      letterSpacing: 0.24,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 11, //reduced from 12
      color: AppColors.appBlack,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    labelLarge: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 11,
      color: AppColors.appBlack,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 10,
      color: AppColors.appBlack,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
  );
}

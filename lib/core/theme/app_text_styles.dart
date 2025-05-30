import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/size_confige.dart';

class AppTextStyles {
  static TextStyle headerTextStyle(
    BuildContext context, {
    Color color = Colors.white,
  }) {
    return GoogleFonts.signikaNegative(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle montserratStyle(
    BuildContext context, {
    required Color color,
    double fontSize = 24,
  }) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: getResponsiveFontSize(context, fontSize: fontSize),
    );
  }

  static TextStyle headingStyles(
    BuildContext context, {
    double fontSize = 36,
    Color color = Colors.white,
  }) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: fontSize),
      fontWeight: FontWeight.bold,
      color: color,
      letterSpacing: 2,
    );
  }

  static TextStyle normalStyle(
    BuildContext context, {
    Color color = Colors.white,
    double fontSize = 16,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context, fontSize: fontSize),
      color: color,
      letterSpacing: 1.7,
      height: 1.5,
    );
  }

  static TextStyle comfortaaStyle(BuildContext context) {
    return GoogleFonts.comfortaa(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w800,
      color: Colors.grey,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}

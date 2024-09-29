import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kBackgroundColor = const Color(0xFFFAFAFA);
Color kBlackColor = const Color(0xFF181818);
Color kGreenLightColor = const Color(0xFF2ECC71);
Color kGreenDarkColor = const Color(0xFF27AE60);
Color kLightColor = const Color(0xFF979797);
Color kGreyColor = const Color(0xFFAFAFAF);
Color kWhiteColor = const Color(0xFFF3F3F3);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);

TextStyle lightTextStyle = GoogleFonts.poppins(
  color: kLightColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: const Color(0xFFFFFFFF),
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kLightColor,
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kGreenDarkColor,
);

double defaultMargin = 24.0;

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
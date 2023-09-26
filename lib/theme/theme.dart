import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';


ThemeData theme() {
  return ThemeData(
    primaryColor: primaryColor,
    secondaryHeaderColor: primaryColor,
    scaffoldBackgroundColor: secondaryColor,
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    contentPadding: EdgeInsets.only(
      left: 16,
      right: 16,
      bottom: 13.5.h, // HERE THE IMPORTANT PART
      top: 13.5.h, // HERE THE IMPORTANT PART
    ),

    hintStyle:  TextStyle(color: Color(0xff666666),fontSize: 14.sp),
    //background: #8BC53F40;


    fillColor: gray,

    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: gray),
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 1, color:primaryColor),
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );
}

final TextTheme textTheme1 = TextTheme(
  displayLarge: GoogleFonts.poppins(
      fontSize: 24.sp,
      fontWeight: FontWeight.w800,
      color: textColor),
  headlineLarge: GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w800,
      color: textColor),
  headlineMedium: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      color: textColor),
  headlineSmall:
  GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w400,color: primaryDarkColor),

  titleLarge: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: textColor),
  titleMedium: GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.normal,
      color: textColor),
  titleSmall: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: textColor),
  bodyLarge: GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: textColor),
  bodyMedium: GoogleFonts.poppins(
      fontSize: 10.sp,
      color: textColor),

  bodySmall: GoogleFonts.poppins(
      fontSize: 10.sp,
      color: textColor),

);


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Colors.dart';

Widget customButton(String title) {
  return SizedBox(
    height: 48.h,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: primaryDarkColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: const BorderSide(color: primaryDarkColor))),
      onPressed: () {},
      child: Text(
        title,
        style: GoogleFonts.lato(
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500)),
      ),
    ),
  );
}

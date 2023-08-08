import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Colors.dart';

Widget primaryButton(String text, Function() onPressed) {
  return SizedBox(
    height: 40.h,
    width: double.infinity,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: primaryDarkColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.r),
                side: const BorderSide(color: primaryDarkColor))),
        onPressed: () {
          onPressed();
        },
        child: text_14_700(text, Colors.white)),
  );
}

Widget primaryButtonWithIcon(
    String text, IconData iconData, Function() onPressed) {
  return SizedBox(
    child: Card(
      color: primaryDarkColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: primaryDarkColor, width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              iconData,
              color: Colors.white,
            ),
            const SizedBox(
              width: 4,
            ),
            text_14_400(text, Colors.white)
          ],
        ),
      ),
    ),
  );
}

Widget whiteButton(String text, Function() onPressed) {
  return SizedBox(
    height: 40.h,
    width: double.infinity,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.r),
                side: const BorderSide(color: secondaryColor))),
        onPressed: () {
          onPressed();
        },
        child: text_14_700(text, secondaryColor)),
  );
}

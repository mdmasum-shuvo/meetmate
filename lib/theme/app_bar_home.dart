import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Colors.dart';
import 'image_assets.dart';

AppBar mainAppBar(String title,
    [bool isSearchVisible = false, bool isHome = false]) {
  return AppBar(
    // Set this height
    elevation: 0,
    backgroundColor: primaryDarkColor,

    flexibleSpace: SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isHome ? Image.asset(logoWhite,width: 126.w,) : text_16_700(title, Colors.white)
            ],
          ),
          if (isSearchVisible)
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: const Row(children: [
                Spacer(),
                const Icon(
                  Icons.search,
                  color: Colors.white,
                )
              ]),
            ),
        ],
      ),
    ),
  );
}

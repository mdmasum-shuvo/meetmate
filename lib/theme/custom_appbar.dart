import 'package:contactbook/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../theme/Colors.dart';

AppBar customAppbarWidget(String title) {
  return AppBar(
    // Set this height
    leading: Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: secondaryColor,
        ),
        onPressed: () {
          Get.back();
        },
      ),
    ),
    elevation: 0,
    backgroundColor: primaryDarkColor,
    flexibleSpace: SafeArea(
      child: Stack(alignment: Alignment.centerLeft, children: [
        Center(
          child: Align(
            alignment: Alignment.center,
            child: Text(title,
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700)),
          ),
        ),
      ]),
    ),
  );
}

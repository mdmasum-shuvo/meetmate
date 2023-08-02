
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'image_assets.dart';

AppBar customAppbarWidgetDashboard() {
  return AppBar(
    // Set this height
    elevation: 0,
    backgroundColor: Colors.white,
    flexibleSpace: SafeArea(
      child: Stack(alignment: Alignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(logo,width: 126.w,),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: const Row(children: [
            Spacer(),

          ]),
        ),
      ]),
    ),
  );
}

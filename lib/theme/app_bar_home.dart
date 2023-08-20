
import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Colors.dart';
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
            Image.asset(
              login_logo,
              width: 126.w,
            ),
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

AppBar mainAppBar(String title,[bool isSearchVisible=true]) {
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
            children: [text_16_700(title, Colors.white)],
          ),
          if(isSearchVisible)
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: const Row(children: [
              Spacer(),
              const Icon(Icons.search,color: Colors.white,)
            ]),
          ),

        ],
      ),
    ),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/text_theme.dart';


Widget navItem(String imgIcon, String title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        imgIcon,
        width: 24.w,
        height: 24.h,
      ),
      text_10_400(title,Colors.grey.shade700)
    ],
  );
}
Widget navItemIcon(String imgIcon) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        imgIcon,
        width: 24.w,
        height: 24.h,
      ),
    ],
  );
}

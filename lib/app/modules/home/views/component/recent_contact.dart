import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:contactbook/theme/Colors.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../theme/image_assets.dart';
import '../../../../../theme/theme.dart';
import '../../../../routes/app_pages.dart';
import '../../../../utils/load_network_image.dart';

Widget recentContact(String data) {
  return GestureDetector(
    onTap: () {
      // Get.toNamed(Routes.DETAIL, arguments: [data.employeeId]);
    },
    child: Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 88,
            width: 88,
            child: loadNetworkImage(""),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(width: 72, child: text_12_400("Masum Talukder")),

        ],
      ),
    ),
  );
}

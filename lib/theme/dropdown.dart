import 'package:contactbook/theme/text_theme.dart';
import 'package:contactbook/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Colors.dart';

Widget dropDown(String title, RxList<String> listDepartmentStr,
    Function(String value) onChange) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_14_700(title),
      SizedBox(
        height: 4,
      ),
      Obx(
        () => DropdownButtonFormField<String>(
          icon: const Icon(Icons.arrow_drop_down_sharp),
          elevation: 16,
          style: textTheme1.titleMedium?.copyWith(
              fontSize: 14.sp, fontWeight: FontWeight.w400, color: textColor),
          decoration: const InputDecoration(
            hintText: "",
          ),
          onChanged: (String? value) {
            onChange(value ?? "");
            //This is called when the user selects an item.
          },
          items: listDepartmentStr.value
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
      SizedBox(
        height: 12,
      ),
    ],
  );
}

import 'package:contactbook/theme/Colors.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget textField(String title, String hint, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_14_700(title),
      SizedBox(
        height: 4,
      ),
      TextFormField(
        keyboardType: TextInputType.text,
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
        ),
      ),
      SizedBox(
        height: 12,
      )
    ],
  );
}

Widget dateField(String title, String hint, RxString date, Function onPress) {
  return Obx(() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_14_700(title),
      SizedBox(
        height: 4,
      ),
      TextFormField(
        onTap: () async {
          onPress();
        },
        keyboardType: TextInputType.text,
        readOnly: true,
        controller: TextEditingController(text: date.value),
        decoration: InputDecoration(
            hintText: hint,
            suffixIcon: const Icon(
              Icons.calendar_month_outlined,
              color: textColor,
            )),
      ),
      SizedBox(
        height: 12,
      )
    ],
  ));
}

Widget timeField(String title, String hint, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_14_700(title),
      SizedBox(
        height: 4,
      ),
      TextFormField(
        keyboardType: TextInputType.text,
        readOnly: true,
        decoration: InputDecoration(
            hintText: hint,
            suffixIcon: const Icon(
              Icons.watch_later_outlined,
              color: textColor,
            )),
      ),
      SizedBox(
        height: 12,
      )
    ],
  );
}

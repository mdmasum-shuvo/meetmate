import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';

Widget viewData(String title, String value) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_14_700(title),
      SizedBox(
        height: 4,
      ),
      text_14_400(value),
      SizedBox(
        height: 8,
      ),
    ],
  );
}

import 'package:flutter/cupertino.dart';

import '../../../../../theme/text_theme.dart';

Widget headerHome(String text1, String text2) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text_16_700(text1),
        text_12_400(text2),
      ],
    ),
  );
}

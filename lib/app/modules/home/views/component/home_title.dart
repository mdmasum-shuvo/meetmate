import 'package:flutter/cupertino.dart';

import '../../../../../theme/text_theme.dart';

Widget homeTitle(String title, String subTitle) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [text_16_700(title), text_12_400(subTitle)],
  );
}

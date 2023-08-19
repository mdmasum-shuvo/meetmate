import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../theme/colors.dart';
import '../../../../../theme/text_theme.dart';
import '../../../../utils/load_network_image.dart';

Widget contactItem() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  elevation: 2,
                  child: SizedBox(
                    height: 72,
                    width: 72,
                    child: loadNetworkImage(""),
                  ),
                ),
                SizedBox(width: 8,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text_14_700("Jake Nackos"),
                    text_12_400("Marketing Manager"),
                    text_12_400("OS Corp"),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: lightGray,
            )
          ],
        ),
      ),
    ),
  );
}
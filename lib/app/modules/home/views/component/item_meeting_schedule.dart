import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../theme/colors.dart';

Widget itemMeetingSchedule() {
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text_14_700("Meeting with Shohay CEO"),
                text_12_400("Khaled Saifullah"),
                text_12_400("Online Meeting"),
                text_12_400("26 JUL 2023, Sunday, 11:00 AM - 11:30 AM"),
              ],
            ),
            const Icon(Icons.arrow_forward_ios,color: lightGray,)
          ],
        ),
      ),
    ),
  );
}

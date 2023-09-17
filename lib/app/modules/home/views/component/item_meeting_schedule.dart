import 'package:contactbook/app/modules/home/model/ScheduleResponse.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../theme/colors.dart';
import '../../../../routes/app_pages.dart';

Widget itemMeetingSchedule(Data data) {
  return GestureDetector(
    onTap:()=>{Get.toNamed(Routes.SCHEDULE_DETAIL,arguments: [data.id.toString()])} ,

    child: Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text_14_700(data.title??""),
                    text_12_400(data.meetingLocation??""),
                    text_12_400(data.meetingDate??""),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios,color: lightGray,)
            ],
          ),
        ),
      ),
    ),
  );
}

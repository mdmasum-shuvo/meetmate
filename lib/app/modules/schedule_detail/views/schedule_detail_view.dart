import 'package:contactbook/app/modules/schedule_detail/views/component/participants.dart';
import 'package:contactbook/app/modules/schedule_detail/views/component/viewData.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme/custom_appbar.dart';
import '../controllers/schedule_detail_controller.dart';

class ScheduleDetailView extends GetView<ScheduleDetailController> {
  const ScheduleDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbarWidget("Schedule Detail"),
      body: Obx(() => Padding(
            padding: const EdgeInsets.all(16.0),
            child: controller.data?.value?.title != null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      viewData("Title", controller.data?.value?.title ?? ""),
                      viewData(
                          "Date", controller.data?.value?.meetingDate ?? ""),
                      viewData("Date",
                          "${controller.data?.value?.startTime}-${controller.data?.value?.endTime!}"),
                      viewData("Location",
                          controller.data?.value?.meetingLocation ?? ""),
                      viewData(
                          controller.data?.value?.location == 1
                              ? "Meeting Link"
                              : "Address",
                          controller.data?.value?.meetingLink ?? ""),
                      participants(controller.data!.value!.participent!),
                      viewData("Agenda", controller.data?.value?.agenda ?? ""),
                    ],
                  )
                : Container(),
          )),
    );
  }
}

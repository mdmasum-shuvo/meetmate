import 'dart:ffi';

import 'package:contactbook/app/modules/create_schedule/views/component/participant.dart';
import 'package:contactbook/app/routes/app_pages.dart';
import 'package:contactbook/theme/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

import '../../../../theme/button_theme.dart';
import '../../../../theme/custom_appbar.dart';
import '../../../../theme/text_theme.dart';
import '../../../../theme/textfield.dart';
import '../controllers/create_schedule_controller.dart';

class CreateScheduleView extends GetView<CreateScheduleController> {
  const CreateScheduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbarWidget("Create New Schedule"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textField(
                      "Title", "enter client name", controller.titleController),
                  dateField("Date", "enter date", controller.viewDateFormat,
                      () async {
                    print("click date clocik date");
                    DateTime? newDateTime = await showRoundedDatePicker(
                      height: 300,
                      context: context,
                      locale: const Locale('en', 'US'),
                      initialDate: DateTime.now(),
                      firstDate: DateTime(DateTime.now().year - 40),
                      lastDate: DateTime(DateTime.now().year + 40),
                      borderRadius: 16,
                    );
                    if (newDateTime != null) {
                      controller.changeDateformate(newDateTime);
                    }
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: timeField(
                            "Start time",
                            controller.selectedStartTimeStr,
                            "enter time", () async {
                          TimeOfDay time = (await showTimePicker(
                            initialTime: controller.selectedStartTime.value,
                            context: context,
                          ))!;
                          controller.selectedStartTime.value = time;
                          controller.formatStartTime(context);
                        }),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: timeField(
                            "End time",
                            controller.selectedEndTimeStr,
                            "enter time", () async {
                          TimeOfDay time = (await showTimePicker(
                            initialTime: controller.selectedEndTime.value,
                            context: context,
                          ))!;
                          controller.selectedEndTime.value = time;
                          controller.formatEndTime(context);
                        }),
                      ),
                    ],
                  ),
                  dropDown(
                      "Location", "Select location", controller.locationStr,
                      (String value) {
                    controller.settingController.getLocationId(value);
                  }),
                  textField("Meeting Link", "enter meeting link",
                      controller.meetingLinkController),
                  dropDown("Priority Level", "Select priority",
                      controller.priorityStr, (String value) {
                    controller.settingController.getPriorityId(value);
                  }),
                  textField("Agenda", "enter meeting agenda",
                      controller.agendaController),
                  Obx(
                    () => controller.participantStr.isNotEmpty
                        ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              text_14_700("Participants"),
                              SizedBox(height: 12,),
                              ListView.builder(
                                itemCount:
                                    controller.participantStr.value.length,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return participantItem(
                                      controller.participantStr.value[index],
                                      () {
                                        controller.participantStr.removeAt(index);
                                      });
                                },
                              ),
                              SizedBox(height: 12,),
                            ],
                          )
                        : Container(),
                  ),


                  dropDown("Client Name", "Select Client Name",
                      controller.contactListStr, (String value) {
                    controller.participantStr.add(value);
                  }),
                  const SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: primaryButton("Save", () => controller.createSchedule()))
          ],
        ),
      ),
    );
  }
}


import 'package:contactbook/app/routes/app_pages.dart';
import 'package:contactbook/theme/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

import 'package:get/get.dart';

import '../../../../theme/button_theme.dart';
import '../../../../theme/custom_appbar.dart';
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
                children: [
                  textField(
                      "Title", "enter client name", controller.titleController),
                  dropDown("Company Name", "", controller.companyListStr,
                          (String value) {
                        controller.settingController
                            .getSelectedIdFromCompany(value);
                        print("company name: $value");
                      }),
                  dropDown("Client Name", "", controller.contactListStr,
                          (String value) {
                        controller.contactListController
                            .getSelectedIdFromContactList(value);
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      primaryButtonWithIcon("New Contact", Icons.add,
                              () => Get.toNamed(Routes.CREATE_CONTACT), 24),
                      const SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: primaryButtonWhiteWithIcon("Add Participant",
                            Icons.person_add_outlined, () => null, 24),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  dateField("Date", "enter date", controller.viewDateFormat,
                          () async {
                        print("click date clocik date");
                        DateTime? newDateTime = await showRoundedDatePicker(
                          height: 300,
                          context: context,
                          locale: Locale('en', 'US'),
                          initialDate: DateTime.now(),
                          firstDate: DateTime(DateTime
                              .now()
                              .year - 40),
                          lastDate: DateTime(DateTime
                              .now()
                              .year + 40),
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
                        child: timeField("Start time", "enter time",
                            controller.startTimeController),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: timeField("End time", "enter time",
                            controller.endTimeController),
                      ),
                    ],
                  ),
                  dropDown("Location", "", controller.locationStr,
                          (String value) {}),
                  textField("Meeting Link", "enter meeting link",
                      controller.meetingLinkController),
                  dropDown("Priority Level", "", controller.priorityStr,
                          (String value) {}),
                  textField("Agenda", "enter meeting agenda",
                      controller.agendaController),
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

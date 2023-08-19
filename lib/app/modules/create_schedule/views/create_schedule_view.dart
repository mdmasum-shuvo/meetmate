import 'package:contactbook/theme/dropdown.dart';
import 'package:flutter/material.dart';

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
                  textField("Client Name", "enter client name",
                      controller.emailPhoneController),
                  dropDown("Company Name", controller.listDepartmentStr,
                      (String value) {}),
                  dropDown("Client Name", controller.listDepartmentStr,
                      (String value) {}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      primaryButtonWithIcon(
                          "New Contact", Icons.add, () => null, 24),
                      const SizedBox(
                        width: 8,
                      ),
                      primaryButtonWhiteWithIcon("Add Participant",
                          Icons.person_add_outlined, () => null, 24)
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  dateField("Date of Birth", "enter date",
                      controller.emailPhoneController),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: timeField("Start time", "enter time",
                            controller.emailPhoneController),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: timeField("End time", "enter time",
                            controller.emailPhoneController),
                      ),
                    ],
                  ),
                  dropDown("Location", controller.listDepartmentStr,
                      (String value) {}),
                  textField("Meeting Link", "enter meeting link",
                      controller.emailPhoneController),
                  dropDown("Priority Level", controller.listDepartmentStr,
                      (String value) {}),
                  textField("Agenda", "enter meeting agenda",
                      controller.emailPhoneController),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: primaryButton("Save", () => null))
          ],
        ),
      ),
    );
  }
}

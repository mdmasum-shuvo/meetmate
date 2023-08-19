import 'package:contactbook/theme/text_theme.dart';
import 'package:contactbook/theme/textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme/custom_appbar.dart';
import '../../../../theme/dropdown.dart';
import '../../../../theme/theme.dart';
import '../controllers/create_contact_controller.dart';

class CreateContactView extends GetView<CreateContactController> {
  const CreateContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbarWidget("Create New Contact"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textField("Client Name", "enter client name",
                  controller.emailPhoneController),
              textField("Designation", "enter designation",
                  controller.emailPhoneController),
              textField("Company Name", "enter company name",
                  controller.emailPhoneController),
              dropDown("Company Type", controller.listDepartmentStr,
                  (String value) {}),
              textField("Phone No.", "enter Phone No.",
                  controller.emailPhoneController),
              textField(
                  "Email ID", "enter email", controller.emailPhoneController),
              textField("Website", "enter website address:www.example.com",
                  controller.emailPhoneController),
              textField(
                  "Address", "enter address", controller.emailPhoneController),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: textField("City", "enter City name",
                        controller.emailPhoneController),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: textField("State", "enter State name",
                        controller.emailPhoneController),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: textField("Zip/Post Code", "enter Zip/postal code",
                        controller.emailPhoneController),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: textField("Country", "enter country name",
                        controller.emailPhoneController),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: dropDown(
                        "Gender", controller.genderStr, (String value) {}),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: textField("Date of Birth", "enter date",
                        controller.emailPhoneController),
                  )
                ],
              ),
              dropDown("Priority Level", controller.priorityStr,
                  (String value) {}),
              dropDown(
                  "Status", controller.statusStr, (String value) {}),
              dropDown(
                  "Nature", controller.natureStr, (String value) {}),
              textField(
                  "Deal Amount", "enter amount", controller.emailPhoneController),
            ],
          ),
        ),
      ),
    );
  }
}

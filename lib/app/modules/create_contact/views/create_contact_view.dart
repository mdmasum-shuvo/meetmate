import 'package:contactbook/theme/text_theme.dart';
import 'package:contactbook/theme/textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme/button_theme.dart';
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
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textField("Client Name", "enter client name",
                      controller.clientNameController),
                  textField("Designation", "enter designation",
                      controller.designationController),
                  dropDown("Company Name","Select Company Name", controller.listCompanyName,
                          (String value) {}),
                  dropDown("Company Type","Select Company Type", controller.listCompanyTypeName,
                          (String value) {}),
                  textField("Phone No.", "enter Phone No.",
                      controller.phoneNumberController),
                  textField(
                      "Email ID", "enter email", controller.emailController),
                  textField("Website", "enter website address:www.example.com",
                      controller.websiteController),
                  textField(
                      "Address", "enter address", controller.addressController),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: textField("City", "enter City name",
                            controller.cityController),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: textField("State", "enter State name",
                            controller.stateController),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: textField("Zip/Post Code", "enter Zip/postal code",
                            controller.zipController),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: dropDown("Country","Select Country", controller.listCountryName,
                                (String value) {}),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: dropDown(
                            "Gender", "",controller.genderStr, (String value) {}),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: dateField("Date of Birth", "enter date",
                            controller.dobController),
                      )
                    ],
                  ),
                  dropDown("Priority Level","", controller.priorityStr,
                          (String value) {}),
                  dropDown(
                      "Status","", controller.statusStr, (String value) {}),
                  dropDown(
                      "Nature","", controller.natureStr, (String value) {}),
                  textField(
                      "Deal Amount", "enter amount", controller.dealAmountController),
                  SizedBox(height: 60,)

                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: primaryButton("Save", () => controller.createContact()))
          ],
        ),
      ),
    );
  }
}

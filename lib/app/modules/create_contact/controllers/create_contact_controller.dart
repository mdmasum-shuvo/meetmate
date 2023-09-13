import 'package:contactbook/app/model/CompanyTypeResponse.dart';
import 'package:contactbook/app/modules/create_contact/providers/create_contact_provider.dart';
import 'package:contactbook/app/utils/setting_provider.dart';
import 'package:contactbook/app/utils/settonController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';

class CreateContactController extends GetxController {
  //TODO: Implement CreateContactController

  final SettingController settingController = SettingController();
  final CreateContactProvider _provider = CreateContactProvider();
  final count = 0.obs;
  final clientNameController = TextEditingController(text: "");
  final designationController = TextEditingController(text: "");
  final phoneNumberController = TextEditingController(text: "");
  final emailController = TextEditingController(text: "");
  final websiteController = TextEditingController(text: "");
  final addressController = TextEditingController(text: "");
  final cityController = TextEditingController(text: "");
  final stateController = TextEditingController(text: "");
  final zipController = TextEditingController(text: "");
  final dealAmountController = TextEditingController(text: "");
  final dobController = TextEditingController(text: "");
  RxList<String> genderStr = <String>["Male", "Female"].obs;
  RxList<String> priorityStr = <String>["High", "Medium", "Low"].obs;
  RxList<String> statusStr = <String>["Active", "Inactive"].obs;
  RxList<String> natureStr = <String>["Good", "Bad"].obs;
  RxList<String> listCompanyTypeName = <String>[].obs;
  RxList<String> listCompanyTypeId = <String>[].obs;

  RxList<String> listCompanyName = <String>[].obs;
  RxList<String> listCountryName = <String>[].obs;
  RxString postDateFormat="".obs;
  RxString viewDateFormat="".obs;
  @override
  void onInit() {
    super.onInit();
    settingController.getCompanyList();
    settingController.getCountryList();
    settingController.getCompanyType();
    listCompanyName = settingController.listCompanyName;
    listCompanyTypeId = settingController.listCompanyTypeId;
    listCompanyTypeName = settingController.listCompanyTypeName;
    listCountryName = settingController.listCountryName;
  }

  @override
  void onReady() {
    super.onReady();

  }

  @override
  void onClose() {
    super.onClose();
  }


  void createContact() {
    Map<String, String?> qParams = {
      'client_name': clientNameController.text.toString(),
      'designation':  designationController.text.toString(),
      'company_id': "1",
      'company_type_id': "1",
      'phone_no':  phoneNumberController.text.toString(),
      'email':  emailController.text.toString(),
      'website': websiteController.text.toString(),
      'address': addressController.text.toString(),
      'city': cityController.text.toString(),
      'state': stateController.text.toString(),
      'post_code': zipController.text.toString(),
      'country_id': "1",
      'gender': "1",
      'dob': "01/05/1995",
      'piroty': "1",
      'status': "1",
      'nature': "1",
      'deal_amount': dealAmountController.text.toString(),
    };
    EasyLoading.show();
    _provider.createContact(qParams).then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        getxSnackbar("", response.message ?? "", Colors.green);
        EasyLoading.dismiss();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void changeDateformate(DateTime newDateTime) {
    String viewDate = DateFormat.yMMMd().format(newDateTime);
    String postDate = DateFormat.yMd().format(newDateTime);
    viewDateFormat.value=viewDate;
    postDateFormat.value=postDate;


  }

  void increment() => count.value++;


}

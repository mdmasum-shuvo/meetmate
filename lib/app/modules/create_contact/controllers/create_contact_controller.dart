import 'package:contactbook/app/modules/create_contact/model/CompanyTypeResponse.dart';
import 'package:contactbook/app/modules/create_contact/providers/create_contact_provider.dart';
import 'package:contactbook/app/utils/setting_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';

class CreateContactController extends GetxController {
  //TODO: Implement CreateContactController

  SettingProvider _settingProvider=SettingProvider();
  CreateContactProvider _provider=CreateContactProvider();
  final count = 0.obs;
  final emailPhoneController = TextEditingController(text: "");
  RxList<String> genderStr = <String>["Male","Female"].obs;
  RxList<String> priorityStr = <String>["High","Medium","Low"].obs;
  RxList<String> statusStr = <String>["Active","Inactive"].obs;
  RxList<String> natureStr = <String>["Good","Bad"].obs;
  RxList<String> listCompanyName = <String>[].obs;
  RxList<String> listCompanyId = <String>[].obs;
  Rx<CompanyTypeResponse> companyTypeList =
      CompanyTypeResponse(data: List.empty()).obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getCompanyType();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getCompanyType() async {
    // EasyLoading.show();
    _settingProvider.getCompanyType().then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        companyTypeList.value = response;
        //department.value = departmentList.value!.data![0].departmentName!;
        setCompanyTypeData();
        //getDesignation();
        EasyLoading.dismiss();
      } else {
        //getDesignation();

         EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }
  void createContact(){
    Map<String, String?> qParams = {
      'client_name': "Masum Talukder",
      'designation': "Software Engineer",
      'company_id': "1",
      'company_type_id': "1",
      'phone_no': "0163508352",
      'email': "masumappinion@gmail.com",
      'website': "www.example.com",
      'address': "Mirpur-1,Dhaka",
      'city': "Dhaka",
      'state': "Dhaka",
      'post_code': "2331",
      'country_id': "1",
      'gender': "1",
      'dob': "01/05/1995",
      'piroty': "1",
      'status': "1",
      'nature': "1",
      'deal_amount': "100000",
    };

    _provider.createContact(qParams).then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        getxSnackbar("", response.message??"", Colors.green);
        EasyLoading.dismiss();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }


  void increment() => count.value++;

  void setCompanyTypeData() async {
    List<String> listStr = [];
    List<String> listIds = [];

    //listStr.add("Select Company Type");

    for (int i = 0; i < companyTypeList.value.data!.length; i++) {
      listStr.add(companyTypeList.value.data![i].companyType!);
      listIds.add(companyTypeList.value.data![i].id.toString());
    }

    listCompanyName.value = listStr;
    listCompanyId.value = listIds;
  }
}

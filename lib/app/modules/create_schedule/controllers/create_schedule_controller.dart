import 'package:contactbook/app/modules/contact_list/controllers/contact_list_controller.dart';
import 'package:contactbook/app/modules/create_schedule/providers/create_schedule_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/settonController.dart';
import '../../../utils/snackbar.dart';
import '../../contact_list/model/ContactListResponse.dart';
import '../../contact_list/providers/contact_list_provider.dart';

class CreateScheduleController extends GetxController {
  //TODO: Implement CreateScheduleController
  RxList<String> locationStr = <String>["Online","Offline","Others"].obs;
  final clientNameController = TextEditingController(text: "");
  final titleController = TextEditingController(text: "");
  final dateController = TextEditingController(text: "");
  final startTimeController = TextEditingController(text: "");
  final endTimeController = TextEditingController(text: "");
  final agendaController = TextEditingController(text: "");
  final meetingLinkController = TextEditingController(text: "");
  RxList<String> priorityStr = <String>["High","Medium","Low"].obs;
  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;
  TextEditingController textEditingController=TextEditingController();
  final CreateScheduleProvider _provider = CreateScheduleProvider();
  //Rx<ContactListResponse> contactList = ContactListResponse(data: List.empty()).obs;
  Rx<ContactListResponse> list = ContactListResponse(data: List.empty()).obs;
  final ContactListProvider _contactProvider = ContactListProvider();
  final count = 0.obs;
  RxList<String> contactListStr = <String>[].obs;
  RxList<String> companyListStr = <String>[].obs;

  ContactListController contactListController=ContactListController();
  SettingController settingController=SettingController();


   RxString postDateFormat="".obs;
   RxString viewDateFormat="".obs;

  @override
  void onInit() {
    super.onInit();

    //getList();
    contactListController.getList();
    settingController.getCompanyList();
    contactListStr=contactListController.contactListStr;
    companyListStr=settingController.listCompanyName;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  void createSchedule() {
    Map<String, String?> qParams = {
      'title': titleController.text.toString(),
      'meeting_date':postDateFormat.value,
      'start_time': "12:30",
      'end_time': "14:30",
      'location': "1",
      'meeting_link': meetingLinkController.text.toString(),
      'piroty': "1",
      'agenda':agendaController.text.toString(),
      'particepents': "1,2"

    };
    EasyLoading.show();
    _provider.createSchedule(qParams).then((response) async {
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

  void getList() async {
    EasyLoading.show();

    _contactProvider
        .getContactList()
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        EasyLoading.dismiss();
        list.value = response;
        convertContactList();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);

      }
    });
  }
  void convertContactList() {
    for (int i = 0; i < list.value.data!.length; i++) {
      contactListStr.add(list.value.data![i].clientName??"");
    }
  }

  void changeDateformate(DateTime newDateTime) {
    String viewDate = DateFormat.yMMMd().format(newDateTime);
    String postDate = DateFormat.yMd().format(newDateTime);
    viewDateFormat.value=viewDate;
    postDateFormat.value=postDate;


  }




}

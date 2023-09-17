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
  RxList<String> locationStr = <String>["online", "offLine", "others"].obs;
  final clientNameController = TextEditingController(text: "");
  final titleController = TextEditingController(text: "");
  final dateController = TextEditingController(text: "");
  final startTimeController = TextEditingController(text: "");
  final endTimeController = TextEditingController(text: "");
  final agendaController = TextEditingController(text: "");
  final meetingLinkController = TextEditingController(text: "");
  RxList<String> priorityStr = <String>["High", "Medium", "Low"].obs;
  var selectedDate = DateTime.now().obs;
  Rx<TimeOfDay> selectedStartTime = TimeOfDay.now().obs;
  Rx<TimeOfDay> selectedEndTime = TimeOfDay.now().obs;
  Rx<TimeOfDay> timeOfDay = TimeOfDay.now().obs;
  RxString selectedStartTimeStr = "".obs;
  RxString selectedEndTimeStr = "".obs;
  TextEditingController textEditingController = TextEditingController();
  final CreateScheduleProvider _provider = CreateScheduleProvider();

  //Rx<ContactListResponse> contactList = ContactListResponse(data: List.empty()).obs;
  Rx<ContactListResponse> list = ContactListResponse(data: List.empty()).obs;
  final ContactListProvider _contactProvider = ContactListProvider();
  final count = 0.obs;
  RxList<String> contactListStr = <String>[].obs;
  RxList<String> participantStr = <String>[].obs;
  RxList<String> companyListStr = <String>[].obs;

  RxList<String> participantId = <String>[].obs;
  ContactListController contactListController = ContactListController();
  SettingController settingController = SettingController();

  RxString postDateFormat = "".obs;
  RxString viewDateFormat = "".obs;

  @override
  void onInit() {
    super.onInit();
    contactListController.getList();
    settingController.getCompanyList();
    contactListStr = contactListController.contactListStr;
    companyListStr = settingController.listCompanyName;
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
    if (titleController.text.toString() == "" ||
        postDateFormat.value == "" ||
        selectedStartTimeStr.value == "" ||
        selectedEndTimeStr.value == "" ||
        settingController.selectedLocationId.value == "" ||
        meetingLinkController.text.toString() == "" ||
        settingController.selectedPriorityId.value == "" ||
        participantStr.isEmpty ||
        agendaController.text.toString() == "") {
      getxSnackbar("", "Please fill up all mandatory field", red);
      return;
    }

    setParticipantId();

    Map<String, String?> qParams = {
      'title': titleController.text.toString(),
      'meeting_date': postDateFormat.value,
      'start_time': format24(selectedStartTimeStr.value),
      'end_time': format24(selectedEndTimeStr.value),
      'location': settingController.selectedLocationId.value,
      'meeting_link': meetingLinkController.text.toString(),
      'piroty': settingController.selectedPriorityId.value,
      'agenda': agendaController.text.toString(),
      'particepents': "1,2"
    };
    EasyLoading.show();
    _provider.createSchedule(qParams).then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        getxSnackbar("", response.message ?? "", Colors.green);
        EasyLoading.dismiss();
        //Get.back();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  void getList() async {
    EasyLoading.show();

    _contactProvider.getContactList().then((response) async {
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
      contactListStr.add(list.value.data![i].clientName ?? "");
    }
  }

  void changeDateformate(DateTime newDateTime) {
    String viewDate = DateFormat.yMMMd().format(newDateTime);
    String postDate = DateFormat.yMd().format(newDateTime);
    viewDateFormat.value = viewDate;
    postDateFormat.value = postDate;
  }

  void formatStartTime(BuildContext context) {
    selectedStartTimeStr.value = selectedStartTime.value.format(context);
  }

  void formatEndTime(BuildContext context) {
    selectedEndTimeStr.value = selectedEndTime.value.format(context);
  }

  String format24(String time) {
    DateTime date = DateFormat("hh:mm a").parse("6:45 PM");
    return DateFormat("HH:mm").format(date);
  }

  void setParticipantId() {
    print("participants${participantId.toString()}");

    for (int i = 0; i < contactListController.list.value.data!.length; i++) {
      for (int j = 0; j < participantStr.length; j++) {
        if (contactListController.list.value.data![i].clientName! ==
            participantStr[j]) {
          participantId
              .add(contactListController.list.value.data![i].id.toString());
          print("participants${participantId.toString()}");
        }
      }
    }
  }
}

import 'package:contactbook/app/modules/create_schedule/providers/create_schedule_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';

class CreateScheduleController extends GetxController {
  //TODO: Implement CreateScheduleController
  RxList<String> listDepartmentStr = <String>[].obs;
  final emailPhoneController = TextEditingController(text: "");
  RxList<String> priorityStr = <String>["High","Medium","Low"].obs;
  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;
  TextEditingController textEditingController=TextEditingController();
  CreateScheduleProvider _provider = CreateScheduleProvider();



  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
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
      'title': "Meeting with Masum",
      'meeting_date': "10/10/2023",
      'start_time': "10:30",
      'end_time': "11:30",
      'location': "Dhaka,Bangladesh",
      'meeting_link': "meeting link",
      'piroty': "1",
      'agenda': "1",
      'particepents[]': "1",

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

}

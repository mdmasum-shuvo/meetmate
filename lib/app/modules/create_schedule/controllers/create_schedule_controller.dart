import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateScheduleController extends GetxController {
  //TODO: Implement CreateScheduleController
  RxList<String> listDepartmentStr = <String>[].obs;
  final emailPhoneController = TextEditingController(text: "");
  RxList<String> priorityStr = <String>["High","Medium","Low"].obs;
  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;
  TextEditingController textEditingController=TextEditingController();



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
}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateContactController extends GetxController {
  //TODO: Implement CreateContactController

  final count = 0.obs;
  final emailPhoneController = TextEditingController(text: "");
  RxList<String> listDepartmentStr = <String>[].obs;
  RxList<String> genderStr = <String>["Male","Female"].obs;
  RxList<String> priorityStr = <String>["High","Medium","Low"].obs;
  RxList<String> statusStr = <String>["Active","Inactive"].obs;
  RxList<String> natureStr = <String>["Good","Bad"].obs;

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

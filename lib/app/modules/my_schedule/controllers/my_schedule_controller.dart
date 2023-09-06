import 'package:get/get.dart';

class MyScheduleController extends GetxController {
  //TODO: Implement MyScheduleController
  final  selectedDay=DateTime.now().obs;
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

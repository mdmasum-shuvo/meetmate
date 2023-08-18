import 'package:get/get.dart';

import '../controllers/my_schedule_controller.dart';

class MyScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyScheduleController>(
      () => MyScheduleController(),
    );
  }
}

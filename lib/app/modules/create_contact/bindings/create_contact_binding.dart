import 'package:get/get.dart';

import '../controllers/create_contact_controller.dart';

class CreateContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateContactController>(
      () => CreateContactController(),
    );
  }
}

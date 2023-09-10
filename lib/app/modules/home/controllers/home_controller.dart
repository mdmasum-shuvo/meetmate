import 'package:contactbook/app/modules/contact_list/controllers/contact_list_controller.dart';
import 'package:contactbook/app/modules/home/model/ScheduleResponse.dart';
import 'package:contactbook/app/modules/home/providers/home_provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../contact_list/model/ContactListResponse.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  Rx<ScheduleResponse> scheduleList = ScheduleResponse(data: List.empty()).obs;
  final HomeProvider _provider = HomeProvider();
  Rx<ContactListResponse> contactList = ContactListResponse(data: List.empty()).obs;

  final ContactListController contactListController=ContactListController();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    contactListController.getList();
    contactList=contactListController.list;
  }

  @override
  void onReady() {
    super.onReady();
    getScheduleList();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getScheduleList() async {
    EasyLoading.show();

    _provider
        .getScheduleList()
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        EasyLoading.dismiss();
        scheduleList.value = response;
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);

      }
    });
  }


  void increment() => count.value++;
}

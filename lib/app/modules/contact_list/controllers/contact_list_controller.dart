import 'package:contactbook/app/modules/contact_list/model/ContactListResponse.dart';
import 'package:contactbook/app/modules/contact_list/providers/contact_list_provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';

class ContactListController extends GetxController {
  //TODO: Implement ContactListController
  Rx<ContactListResponse> list = ContactListResponse(data: List.empty()).obs;
  final ContactListProvider _provider = ContactListProvider();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getList();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  void getList() async {
    EasyLoading.show();

    _provider
        .getContactList()
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        EasyLoading.dismiss();
        list.value = response;
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);

      }
    });
  }

}

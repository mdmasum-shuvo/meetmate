import 'package:contactbook/app/modules/contact_detail/model/ContactDetailResponse.dart';
import 'package:contactbook/app/modules/contact_detail/providers/contact_detail_provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';

class ContactDetailController extends GetxController {

  Rx<ContactDetailResponse> data = ContactDetailResponse().obs;
  final ContactDetailProvider _provider = ContactDetailProvider();

  String id="";
  @override
  void onReady() {
    super.onReady();

  }
  @override
  void onInit() {
    id=Get.arguments[0];
    getDetail();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void getDetail() async {
    EasyLoading.show();
    _provider
        .getContact(id)
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        EasyLoading.dismiss();
        data.value = response;
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);

      }
    });
  }


}

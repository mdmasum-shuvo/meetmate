import 'package:contactbook/app/modules/contact_detail/model/ContactDetailResponse.dart';
import 'package:contactbook/app/modules/contact_detail/providers/contact_detail_provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';

class ContactDetailController extends GetxController {
  //TODO: Implement ContactDetailController

  Rx<ContactDetailResponse> data = ContactDetailResponse().obs;
  final ContactDetailProvider _provider = ContactDetailProvider();

  String id=Get.arguments[0];
  @override
  void onReady() {
    super.onReady();
    getDetail();
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

import 'package:contactbook/app/modules/schedule_detail/providers/schedule_detail_provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../schedule_detail/model/ScheduleDetailResponse.dart';

class ScheduleDetailController extends GetxController {
  //TODO: Implement ScheduleDetailController

  Rx<Data?>? data = Data().obs;
  final ScheduleDetailProvider _provider = ScheduleDetailProvider();

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
        data?.value = response.data!;
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);

      }
    });
  }
}

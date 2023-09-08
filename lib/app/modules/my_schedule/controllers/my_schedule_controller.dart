import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../home/model/ScheduleResponse.dart';
import '../../home/providers/home_provider.dart';

class MyScheduleController extends GetxController {
  //TODO: Implement MyScheduleController
  final  selectedDay=DateTime.now().obs;
  final count = 0.obs;
  Rx<ScheduleResponse> scheduleList = ScheduleResponse(data: List.empty()).obs;
  final HomeProvider _provider = HomeProvider();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getScheduleList();
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

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

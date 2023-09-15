import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../home/model/ScheduleResponse.dart';
import '../../home/providers/home_provider.dart';

class MyScheduleController extends GetxController {
  //TODO: Implement MyScheduleController
  final  selectedDay=DateTime.now().obs;
  final  focusedDay=DateTime.now().obs;
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
    changeDateFormat();
  }
  void getScheduleList(String? date) async {
    EasyLoading.show();

    _provider
        .getScheduleList(date,null)
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

  void changeDateFormat() {
    String postDate = DateFormat.yMd().format(selectedDay.value);
    getScheduleList(postDate);
  }
}

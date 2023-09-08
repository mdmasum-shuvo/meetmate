import 'package:contactbook/app/modules/profile/model/ProfileResponse.dart';
import 'package:contactbook/app/modules/profile/providers/profile_provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
  Rx<ProfileResponse> profileData = ProfileResponse().obs;
  final ProfileProvider _provider = ProfileProvider();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getProfile();
  }

  void getProfile() async {
    EasyLoading.show();
    _provider
        .getProfile()
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.data != null) {
        EasyLoading.dismiss();
        profileData.value = response;
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);

      }
    });
  }

  void increment() => count.value++;
}

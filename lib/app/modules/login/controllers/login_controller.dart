import 'package:contactbook/app/modules/login/providers/login_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/constants.dart';
import '../../../utils/utils.dart';


class LoginController extends GetxController {
  //TODO: Implement LoginController

  final  passwordVisible=false.obs;
  //TODO: Implement SignInController
  final LoginProvider _provider = LoginProvider();

  final emailPhoneController = TextEditingController(text: "superadmin");
  final passwordController = TextEditingController(text: "password");

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void login() async {
    EasyLoading.show();
    _provider
        .login(emailPhoneController.text.toString(),
        passwordController.text.toString())
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        EasyLoading.dismiss();

        Constants.token=response.token!;
        Constants.headers = {
          "Accept": "application/json",
          "token": Constants.token
        };
        Get.offNamed(Routes.HOME);
      }else{
        EasyLoading.dismiss();

        Utils.showControllerError(response);
      }
    });
  }
}

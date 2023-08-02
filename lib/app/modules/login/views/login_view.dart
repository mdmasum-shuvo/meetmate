import 'package:contactbook/theme/image_assets.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../theme/button_theme.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              login_logo,
              height: 80.h,
            ),
          ),
          Column(children: [
            text_14_700("User Id"),

            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Employee Code",
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            text_14_700("Password"),
            TextFormField(

              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            /*           GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.FORGET_PASSWORD);
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: text_12_400(
                          "Forget Password", primaryDarkColor),
                    ),
                  ),*/
            SizedBox(
              height: 8.h,
            ),
            primaryButton("Login", () => {}),
          ],)
        ],
      ),
    );
  }
}

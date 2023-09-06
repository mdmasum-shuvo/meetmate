import 'package:contactbook/app/routes/app_pages.dart';
import 'package:contactbook/theme/Colors.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Flexible(
                flex: 3,
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    login_logo,
                    height: 46.h,
                  ),
                ),
              ),
              Obx(() => Flexible(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        text_14_700("User Id"),
                        SizedBox(
                          height: 8.h,
                        ),
                        TextFormField(
                          controller: controller.emailPhoneController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "User Id",
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        text_14_700("Password"),
                        SizedBox(
                          height: 8.h,
                        ),
                        TextFormField(
                          controller: controller.passwordController,
                          obscureText: controller.passwordVisible.value,
                          decoration: InputDecoration(
                              hintText: "*********",
                              suffixIcon: IconButton(
                                icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  controller.passwordVisible.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  // Update the state i.e. toogle the state of passwordVisible variable
                                  controller.passwordVisible.value =
                                      !controller.passwordVisible.value;
                                },
                              )),
                        ),

                        SizedBox(
                          height: 24.h,
                        ),
                        primaryButton("Login", () => {controller.login()}),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

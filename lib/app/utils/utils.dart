import 'dart:convert';

import 'package:contactbook/app/utils/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../theme/colors.dart';
import '../routes/app_pages.dart';


class Utils {
  static void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = primaryDarkColor
      ..backgroundColor = Colors.grey
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = false
      ..dismissOnTap = false
      ..indicatorType = EasyLoadingIndicatorType.circle
      ..maskType = EasyLoadingMaskType.black
      ..loadingStyle = EasyLoadingStyle.light;
  }

  static int calculateMinutes(String time) {
    var timeSplit = time.split(":");
    var hour = int.parse(timeSplit[0]);
    var minute = int.parse(timeSplit[1]);
    var minutes = hour * 60 + minute;
    return minutes;
  }

  //
  // static void portraitModeOnly() {
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  //     DeviceOrientation.portraitDown,
  //   ]);
  // }
  //
  // static void enableRotation() {
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  //     DeviceOrientation.portraitDown,
  //     DeviceOrientation.landscapeLeft,
  //     DeviceOrientation.landscapeRight,
  //   ]);
  // }

  static void showProviderError(int? errorStatus, String? message) async {
    EasyLoading.dismiss();

    if (errorStatus == null) {
      getxSnackbar("Ops !", "$message!", Colors.red);
    } else {
      switch (errorStatus) {
        case 401:
          // getxSnackbar("Ops !", "Unauthorized!", red);
          // showSnackBar("Unauthorized");

          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.clear();
          getxSnackbar("Ops !", "Session Expired!", red);
          Get.offAllNamed(Routes.LOGIN);

          break;
        default:
          {
            getxSnackbar("Ops !", "$message!", red);
          }
          break;
      }
    }
    // if (responseData["message"] == "Unauthenticated.") {
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   prefs.clear();
    //   getxSnackbar("Ops !", "Something went wrong!", red);
    //   Get.offNamed(Routes.AUTH);
    //   return;
    // }
    // getxSnackbar("Ops !", "${responseData["message"]}", red);
    // print(err.toString());
    // } catch (e) {
    //   getxSnackbar("Ops !", "Something went wrong!", red);
    // }
  }

  static void showControllerError(response) {
    EasyLoading.dismiss();
    getxSnackbar("Ops !", "${response.message}", red);
  }

  static String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  static Duration parseDuration(String s) {
    int hours = 0;
    int minutes = 0;
    int seconds;
    List<String> parts = s.split(':');
    if (parts.length > 2) {
      hours = int.parse(parts[parts.length - 3]);
    }
    if (parts.length > 1) {
      minutes = int.parse(parts[parts.length - 2]);
    }
    seconds = int.parse(parts[parts.length - 1]);
    return Duration(hours: hours, minutes: minutes, seconds: seconds);
  }

  static double calculatePrice(
      num? price, String? discount, String? discountType) {
    if (discountType == "percent") {
      return (price! / 100) * (100 - double.parse(discount.toString()));
    } else {
      return (price! - double.parse(discount!));
    }
  }

  static String discountText(
      num? productType, String? discountType, String? discount) {
    String discountString = "";

    if (productType == 2) {
      discountString = "Buy 1 Get 1";
    } else {
      if (discountType == "percent") {
        if (discount == "0") {
          discountString = "";
        } else {
          discountString = "- $discount%";
        }
      } else {
        if (discount == "0") {
          discountString = "";
        } else {
          discountString = "-৳ $discount";
        }
      }
    }
    return discountString;
  }

  static divider() {
    return const Divider(
      height: 1,
      color: Colors.grey,
    );
  }
}

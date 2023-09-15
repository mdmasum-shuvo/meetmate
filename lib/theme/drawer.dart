import 'package:contactbook/app/routes/app_pages.dart';
import 'package:contactbook/theme/Colors.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'image_assets.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Center(child: Image.asset(logoWhite)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home,
                color: Get.currentRoute == Routes.HOME
                    ? primaryDarkColor
                    : textColor),
            title: Get.currentRoute == Routes.HOME
                ? text_14_700("Home", primaryDarkColor)
                : text_14_400("Home", textColor),
            tileColor:
                Get.currentRoute == Routes.HOME ? Colors.grey[300] : null,
            onTap: () {
              print(Get.currentRoute);
              Get.back();
              Get.offNamed(Routes.HOME);
            },
          ),
          ListTile(
            leading: Icon(Icons.group,
                color: Get.currentRoute == Routes.CONTACT_LIST
                    ? primaryDarkColor
                    : textColor),
            title: Get.currentRoute == Routes.CONTACT_LIST
                ? text_14_700('Contact List', primaryDarkColor)
                : text_14_400('Contact List', textColor),
            tileColor: Get.currentRoute == Routes.CONTACT_LIST
                ? Colors.grey[300]
                : null,
            onTap: () {
              Get.back();
              Get.offNamed(Routes.CONTACT_LIST);
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_month,
                color: Get.currentRoute == Routes.MY_SCHEDULE
                    ? primaryDarkColor
                    : textColor),
            title: Get.currentRoute == Routes.MY_SCHEDULE
                ? text_14_700('My Schedule', primaryDarkColor)
                : text_14_400('My Schedule'),
            tileColor: Get.currentRoute == Routes.MY_SCHEDULE
                ? Colors.grey[300]
                : null,
            onTap: () {
              Get.back();
              Get.offNamed(Routes.MY_SCHEDULE);
            },
          ),
          ListTile(
            leading: Icon(Icons.person_rounded,
                color: Get.currentRoute == Routes.PROFILE
                    ? primaryDarkColor
                    : textColor),
            title: Get.currentRoute == Routes.PROFILE
                ? text_14_700('My Profile', primaryDarkColor)
                : text_14_400('My Profile'),
            tileColor:
                Get.currentRoute == Routes.PROFILE ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed(Routes.PROFILE);
            },
          ),
          ListTile(
            leading: Icon(Icons.login, color: textColor),
            title:text_14_400('Logout'),
            onTap: () {
              Get.offAllNamed(Routes.LOGIN);
            },
          ),
        ],
      ),
    );
  }
}

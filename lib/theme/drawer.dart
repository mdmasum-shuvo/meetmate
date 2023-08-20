import 'package:contactbook/app/routes/app_pages.dart';
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
            title: const Text('Home'),
            tileColor: Get.currentRoute == Routes.HOME ? Colors.grey[300] : null,
            onTap: () {
              print(Get.currentRoute);
              Get.back();
              Get.offNamed(Routes.HOME);
            },
          ),
          ListTile(
            title: const Text('Contact List'),
            tileColor: Get.currentRoute == Routes.CONTACT_LIST  ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed(Routes.CONTACT_LIST );
            },
          ),

          ListTile(
            title: const Text('My Schedule'),
            tileColor: Get.currentRoute == Routes.MY_SCHEDULE  ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed(Routes.MY_SCHEDULE );
            },
          ),
          ListTile(
            title: const Text('My Profile'),
          //  tileColor: Get.currentRoute == Routes.PROFILE ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed(Routes.PROFILE );
            },
          ),
          ListTile(
            title: const Text('Logout'),
            tileColor: Get.currentRoute == '/page2' ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
             // Get.offNamed('/page2');
            },
          ),
        ],
      ),
    );
  }
}
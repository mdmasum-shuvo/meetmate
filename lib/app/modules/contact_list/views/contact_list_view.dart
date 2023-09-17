import 'package:contactbook/app/modules/contact_list/views/component/contact_item.dart';
import 'package:contactbook/app/routes/app_pages.dart';
import 'package:contactbook/theme/app_bar_home.dart';
import 'package:contactbook/theme/button_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme/drawer.dart';
import '../controllers/contact_list_controller.dart';

class ContactListView extends GetView<ContactListController> {
  const ContactListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: mainAppBar("Contact List"),
      drawer: MainDrawer(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Obx(() => ListView.builder(
                  itemCount: controller.list.value.data?.length!,
                  itemBuilder: (context, index) {
                    return contactItem(controller.list.value.data![index]!);
                  },
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 22.0, bottom: 30),
            child: Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 180,
                child: primaryButtonWithIcon("New Contact", Icons.add,
                    () => Get.toNamed(Routes.CREATE_CONTACT), 24),
              ),
            ),
          )
        ],
      ),
    );
  }
}

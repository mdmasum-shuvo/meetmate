import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/contact_list_controller.dart';

class ContactListView extends GetView<ContactListController> {
  const ContactListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContactListView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ContactListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

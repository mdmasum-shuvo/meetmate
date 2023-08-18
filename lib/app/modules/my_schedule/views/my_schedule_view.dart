import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_schedule_controller.dart';

class MyScheduleView extends GetView<MyScheduleController> {
  const MyScheduleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyScheduleView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyScheduleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

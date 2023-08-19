import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_schedule_controller.dart';

class CreateScheduleView extends GetView<CreateScheduleController> {
  const CreateScheduleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateScheduleView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreateScheduleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:contactbook/theme/drawer.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'component/home_title.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: Column(children: [
        homeTitle("Recent Contacts","View All")
      ],),
    );
  }
}

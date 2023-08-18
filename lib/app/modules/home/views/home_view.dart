import 'package:contactbook/app/modules/home/views/component/header.dart';
import 'package:contactbook/app/modules/home/views/component/item_meeting_schedule.dart';
import 'package:contactbook/theme/app_bar_home.dart';
import 'package:contactbook/theme/button_theme.dart';
import 'package:contactbook/theme/drawer.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'component/recent_contact.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Home"),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            headerHome("Recent Contacts", "View All"),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return recentContact("Masum Talukder");
                  },
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: primaryButtonWithIcon(
                          "New Contact", Icons.add, () => null)),
                  SizedBox(width: 16,),
                  Expanded(
                      child: primaryButtonWithIcon("New Meeting",
                          Icons.calendar_month_outlined, () => null))
                ],
              ),
            )
,
            SizedBox(
              height: 24.h,
            ),
            headerHome("Upcoming Schedule", "View All"),
            SizedBox(
              height: 16.h,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return  itemMeetingSchedule();
                  },
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

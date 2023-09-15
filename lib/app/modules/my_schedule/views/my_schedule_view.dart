import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../theme/app_bar_home.dart';
import '../../../../theme/button_theme.dart';
import '../../../../theme/drawer.dart';
import '../../../routes/app_pages.dart';
import '../../home/views/component/item_meeting_schedule.dart';
import '../controllers/my_schedule_controller.dart';

class MyScheduleView extends GetView<MyScheduleController> {
  const MyScheduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("My Schedule"),
      drawer: MainDrawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
               Obx(() =>  Padding(
                 padding:
                 const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
                 child: TableCalendar(
                     firstDay: DateTime.utc(2010, 10, 16),
                     lastDay: DateTime.utc(2030, 3, 14),
                     focusedDay: controller.focusedDay.value,
                     availableCalendarFormats: const {
                       CalendarFormat.month: 'Month',
                     },
                     selectedDayPredicate: (day) {
                       return isSameDay(controller.selectedDay.value, day);
                     },
                     onDaySelected: (selectedDay, focusedDay) {
                       controller.selectedDay.value = selectedDay;
                       controller.focusedDay.value = focusedDay;
                       controller.changeDateFormat();// update `_focusedDay` here as well
                     }),
               )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    child: Obx(() => ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.scheduleList.value.data?.length,
                          itemBuilder: (context, index) {
                            return itemMeetingSchedule(
                                controller.scheduleList.value.data![index]);
                          },
                        )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 22.0, bottom: 30),
            child: Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 190,
                child: primaryButtonWithIcon("New Schedule", Icons.add,
                        () => Get.toNamed(Routes.CREATE_SCHEDULE), 24),
              ),
            ),
          )
        ],
      ),
    );
  }
}

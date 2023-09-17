import 'package:get/get.dart';

import '../modules/contact_detail/bindings/contact_detail_binding.dart';
import '../modules/contact_detail/views/contact_detail_view.dart';
import '../modules/contact_list/bindings/contact_list_binding.dart';
import '../modules/contact_list/views/contact_list_view.dart';
import '../modules/create_contact/bindings/create_contact_binding.dart';
import '../modules/create_contact/views/create_contact_view.dart';
import '../modules/create_schedule/bindings/create_schedule_binding.dart';
import '../modules/create_schedule/views/create_schedule_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/my_schedule/bindings/my_schedule_binding.dart';
import '../modules/my_schedule/views/my_schedule_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/schedule_detail/bindings/schedule_detail_binding.dart';
import '../modules/schedule_detail/views/schedule_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_LIST,
      page: () => const ContactListView(),
      binding: ContactListBinding(),
    ),
    GetPage(
      name: _Paths.MY_SCHEDULE,
      page: () => const MyScheduleView(),
      binding: MyScheduleBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_CONTACT,
      page: () => const CreateContactView(),
      binding: CreateContactBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_SCHEDULE,
      page: () => const CreateScheduleView(),
      binding: CreateScheduleBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_DETAIL,
      page: () => const ContactDetailView(),
      binding: ContactDetailBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE_DETAIL,
      page: () => const ScheduleDetailView(),
      binding: ScheduleDetailBinding(),
    ),
  ];
}

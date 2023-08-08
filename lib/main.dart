import 'package:contactbook/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/constants.dart';
import 'app/utils/utils.dart';

void main() {
  Utils.configLoading();
  var wi = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: wi);

  hasPreviousSession().then((value) {
    runApp(MyApp(
      route: value,
    ));
    FlutterNativeSplash.remove();
  });

  // runApp(
  //     const MyApp(
  //       route:  AppPages.INITIAL,
  //     )
  // );
}

Future<String> hasPreviousSession() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var token = prefs.getString("token");
  var userId = prefs.getString("userId");
  if (token != null) {
    if (token.isNotEmpty) {
      Constants.token = "Bearer $token";
      Constants.userID = userId!;

      Constants.headers = {
        "Accept": "application/json",
        "Authorization": Constants.token
      };
      // DashboardView.name = "${prefs.getString("name")}";
      // DashboardView.id = "${prefs.getString("id")}";
      // DashboardView.dsc = "${prefs.getString("des")}";
      // Constants.ROLEID = "${prefs.getString("roleID")}";

      // TaskProvider provider = TaskProvider();
      //
      // provider.getDashboardTasks().then((value) =>
      // {
      //   DashboardView.dashboardTaskList.value = value,
      //   // EasyLoading.showToast("Task Loaded"),
      // });

      return Routes.HOME;
    } else {
      return Routes.LOGIN;
    }
  }
  return Routes.HOME;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.route}) : super(key: key);

  final String route;

  @override
  Widget build(BuildContext context) {

    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          //You can use the library anywhere in the app even in theme
          theme: theme(),
          home: child,
          builder: EasyLoading.init(),
          initialRoute: route,
          debugShowCheckedModeBanner: false,
          getPages: AppPages.routes,
        );
      },
    );
  }
}

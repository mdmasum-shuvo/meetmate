import 'package:contactbook/app/modules/profile/views/component/text_view.dart';
import 'package:contactbook/theme/Colors.dart';
import 'package:contactbook/theme/app_bar_home.dart';
import 'package:contactbook/theme/drawer.dart';
import 'package:contactbook/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/load_network_image.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:mainAppBar("My Profile",false),
      drawer: MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:Obx(() =>  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        elevation: 2,
                        child: SizedBox(
                          height: 104,
                          width: 104,
                          child: loadNetworkImage(controller.profileData.value.data?[0].photo??""),
                        ),
                      ),
                      const SizedBox(height:16 ,),
                      text_16_700(controller.profileData.value.data?[0].name??""),
                      text_14_400(controller.profileData.value.data?[0].designationName??""),
                      text_14_400(controller.profileData.value.data?[0].companyName??""),
                      SizedBox(height: 16,),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call_outlined,color: textColor),
                          SizedBox(width: 32,),
                          Icon(Icons.email_outlined,color: textColor),
                          SizedBox(width: 32,),
                          Icon(Icons.language_outlined,color: textColor),
                          SizedBox(width: 32,),
                          Icon(Icons.location_on_outlined,color: textColor),
                        ],)

                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24,),
            textViewItem("Phone", controller.profileData.value.data?[0].email??""),
            textViewItem("Email ID", controller.profileData.value.data?[0].email??""),
            textViewItem("Website", controller.profileData.value.data?[0].website??''),
            textViewItem("Address", "1 Hacker Way, Menlo Park, California, 94025, US"),
          ],
        )),
      ),
    );
  }
}

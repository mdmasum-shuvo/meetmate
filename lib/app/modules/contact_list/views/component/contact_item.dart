import 'package:contactbook/app/modules/contact_list/model/ContactListResponse.dart';
import 'package:contactbook/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../theme/colors.dart';
import '../../../../../theme/text_theme.dart';
import '../../../../utils/load_network_image.dart';

Widget contactItem(Data data) {
  return GestureDetector(
    onTap:()=>{Get.toNamed(Routes.CONTACT_DETAIL,arguments: [data.id.toString()])} ,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    elevation: 2,
                    child: SizedBox(
                      height: 72,
                      width: 72,
                      child: loadNetworkImage(data.photo??""),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text_14_700(data.clientName??""),
                      text_12_400(data.designation??""),
                      text_12_400(data.company?.companyName??""),
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: lightGray,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

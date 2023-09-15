import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../theme/Colors.dart';
import '../../../../theme/custom_appbar.dart';
import '../../../../theme/text_theme.dart';
import '../../../utils/load_network_image.dart';
import '../../profile/views/component/text_view.dart';
import '../controllers/contact_detail_controller.dart';

class ContactDetailView extends GetView<ContactDetailController> {
  const ContactDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbarWidget("Contact Detail"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() => Column(
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 24.0, horizontal: 16),
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
                              child: loadNetworkImage(""),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          text_16_700(
                              controller.data.value.data?.clientName ?? ""),
                          text_14_400(
                              controller.data.value.data?.designation ?? ""),
                          text_14_400(controller
                                  .data.value.data?.company?.companyName ??
                              ""),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: () async {
                                    final call = Uri.parse(
                                        'tel:${controller.data.value.data?.phoneNo ?? ""}');
                                    if (true) {
                                      launchUrl(call);
                                    } else {
                                      throw 'Could not launch $call';
                                    }
                                  },
                                  child: const Icon(Icons.call_outlined,
                                      color: textColor)),
                              SizedBox(
                                width: 32,
                              ),
                              GestureDetector(
                                  onTap: () async {
                                    final call = Uri.parse(
                                        'mailto:${controller.data.value.data?.email ?? ""}');
                                    if (true) {
                                      launchUrl(call);
                                    } else {
                                      throw 'Could not launch $call';
                                    }
                                  },
                                  child: const Icon(Icons.email_outlined,
                                      color: textColor)),
                              const SizedBox(
                                width: 32,
                              ),
                              GestureDetector(
                                  onTap: () async {
                                    final call = Uri.parse(
                                        'http//${controller.data.value.data?.website}');
                                    if (true) {
                                      launchUrl(call,mode: LaunchMode.externalApplication);
                                    } else {
                                      throw 'Could not launch $call';
                                    }
                                  },
                                  child: Icon(Icons.language_outlined,
                                      color: textColor)),
                              const SizedBox(
                                width: 32,
                              ),
                              const Icon(Icons.location_on_outlined,
                                  color: textColor),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                textViewItem(
                    "Phone", controller.data.value.data?.phoneNo ?? ""),
                textViewItem(
                    "Email ID", controller.data.value.data?.email ?? ""),
                textViewItem(
                    "Website", controller.data.value.data?.website ?? ""),
                textViewItem("Address",
                    "${controller.data.value.data?.clientName ?? ""}, BD"),
              ],
            )),
      ),
    );
  }
}

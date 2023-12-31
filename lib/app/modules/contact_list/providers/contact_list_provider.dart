import 'dart:convert';

import 'package:contactbook/app/modules/contact_list/model/ContactListResponse.dart';
import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../utils/error/ErrorResponse.dart';
import '../../../utils/utils.dart';

class ContactListProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<ContactListResponse> getContactList() async {
    var url = "${Constants.baseUrl}contact_list";
    Map<String, String?> qParams = {
      'company_id': null,
    };
    print("login url $url");
    final response = await post(url,{},headers: Constants.headers);
    if (response.status.hasError) {
      String message = "Something went wrong!";
      try {
        message =
        ErrorResponse.fromJson(jsonDecode(response.bodyString!)).message!;
      } catch (e) {
        print(e);
      }

      Utils.showProviderError(response.statusCode, message);
      return Future.error(response.bodyString!);
    } else {
      print(response.body);

      return ContactListResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }

}

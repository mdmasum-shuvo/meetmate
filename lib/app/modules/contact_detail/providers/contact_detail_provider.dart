import 'dart:convert';

import 'package:contactbook/app/modules/contact_detail/model/ContactDetailResponse.dart';
import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../utils/error/ErrorResponse.dart';
import '../../../utils/utils.dart';

class ContactDetailProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<ContactDetailResponse> getContact(String id) async {
    var url = "${Constants.baseUrl}contact_profile/$id";

    print("login url $url");
    final response = await get(url,headers: Constants.headers);
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

      return ContactDetailResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }

}

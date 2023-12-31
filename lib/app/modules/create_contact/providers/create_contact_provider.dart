import 'dart:convert';

import 'package:contactbook/app/model/CompanyTypeResponse.dart';
import 'package:contactbook/app/modules/create_contact/model/DefaultResponse.dart';
import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../utils/error/ErrorResponse.dart';
import '../../../utils/utils.dart';

class CreateContactProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }



  Future<DefaultResponse> createContact(Map<String, String?> qParams) async {
    var url = "${Constants.baseUrl}contact_add";


    //param(qParams);
    print("login url $url");
    final response = await post(url,qParams,headers: Constants.headers);
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

      return DefaultResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }




}

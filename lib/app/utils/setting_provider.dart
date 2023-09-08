
import 'dart:convert';

import 'package:contactbook/app/utils/utils.dart';
import 'package:get/get_connect/connect.dart';

import '../modules/create_contact/model/CompanyTypeResponse.dart';
import 'constants.dart';
import 'error/ErrorResponse.dart';

class SettingProvider extends GetConnect {

  Future<CompanyTypeResponse> getCompanyType() async {
    var url = "${Constants.baseUrl}company_type";
    Map<String, String?> qParams = {
      'company_id': null,
    };
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

      return CompanyTypeResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }

}
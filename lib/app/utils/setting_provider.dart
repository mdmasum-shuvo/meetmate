
import 'dart:convert';

import 'package:contactbook/app/model/CountryResponse.dart';
import 'package:contactbook/app/utils/utils.dart';
import 'package:get/get_connect/connect.dart';

import '../model/CompanyResponse.dart';
import '../model/CompanyTypeResponse.dart';
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


  Future<CompanyResponse> getCompany() async {
    var url = "${Constants.baseUrl}company_list";

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

      return CompanyResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }
  Future<CountryResponse> getCountry() async {
    var url = "${Constants.baseUrl}country_list";

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

      return CountryResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }


}
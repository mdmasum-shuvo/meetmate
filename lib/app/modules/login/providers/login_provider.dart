import 'dart:convert';

import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../utils/error/ErrorResponse.dart';
import '../../../utils/utils.dart';
import '../model/LoginResponse.dart';

class LoginProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<LoginResponse> login(String userName,String password) async {
    var url = "${Constants.baseUrl}login";

    print("login url $url");
    final response = await post(
        url,
        {
          "userid": userName,
          "password": password,
          "client_id": "2",
          "client_secret": "0WTkdou8MAf0zC0RuQDOFFCCgtrC4UPJJRcWQc2p"
        },
        headers: Constants.headers);
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

      return LoginResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }

}

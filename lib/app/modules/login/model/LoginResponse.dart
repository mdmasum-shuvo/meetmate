import 'dart:convert';
/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMWNjNjUyNDYzNTY3ZDZjZjVkYmUzOTJmNjk3NzQ2MzI1Njc5M2EwNTQ4ZGY1MTg1MzE4YjI5NTJjMDc5ZGVlZjM4OWViNTljOGMxNGNjN2YiLCJpYXQiOjE2OTQwMjExMDMsIm5iZiI6MTY5NDAyMTEwMywiZXhwIjoxNzI1NjQzNTAzLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.brgbP1iiXjbyZJQDa5ur9c9XcJ8uxnwhj3fcLvIoR8J0WPK_oXQkWpTa5NOLWPrSIRCuJTz9heWxXCt0zatjZ2jxHNDI0RCAq8WEs2iKOO2uj9p0VTZ2Ot5Y3T-qhyYLxGZ2zDWB0YVmrbzuefwLPXyIFRWjMgS6omF6cjCX70E08ep2_CVmkfrMnz6-ilVFE0GPQWpdrAHvH_GQ2_-Ngv1D5schU-sSR53ZDho-0u4NTeli12b_59BKWyxcU0mKearsjK2X_7qDHAhGgFP2mDlhMnMTVpUks-QbFW3QzNoa4k6JsWq1QalaRXsOcffp1lxHeL8O3pdFY3IFU-5XeUSzvFAYtGHZsUXc1oIw7mXKqeH2bGIh9_hCAhpamA3Ue-ZLrgXeNfwbmm_sqIyaq1EuGq-QGoaDy31CX1-MC2QszRvYPuTDaqhl-xEhOu6MPNjaggSU_JV1VntCajCfYFs49rmJRuke51UjbqIZxSYRUmFY-qREYMYHWwhrrkTsjTyf_7UUgHjLfXOlmuEO-ptVr-YY8OKBj6HOBbUwPlZEF3497Ef-EWFdvqnNHH2RBRhzLk8u02fiXBlADshw4MEL3YzAoMF2WtsJaHW2ZhEN2-GcIgzCCyeJHytNHhlwHtDDVgVT7tjvI1ch_nVNJOFTTyAaL9swnO110AJnuQk"
/// status : 200
/// message : ""

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));
String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());
class LoginResponse {
  LoginResponse({
      String? token, 
      num? status, 
      String? message,}){
    _token = token;
    _status = status;
    _message = message;
}

  LoginResponse.fromJson(dynamic json) {
    _token = json['token'];
    _status = json['status'];
    _message = json['message'];
  }
  String? _token;
  num? _status;
  String? _message;
LoginResponse copyWith({  String? token,
  num? status,
  String? message,
}) => LoginResponse(  token: token ?? _token,
  status: status ?? _status,
  message: message ?? _message,
);
  String? get token => _token;
  num? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }

}
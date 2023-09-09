import 'dart:convert';
/// status : 200
/// message : "Client Added Successfully"

DefaultResponse defaultResponseFromJson(String str) => DefaultResponse.fromJson(json.decode(str));
String defaultResponseToJson(DefaultResponse data) => json.encode(data.toJson());
class DefaultResponse {
  DefaultResponse({
      num? status, 
      String? message,}){
    _status = status;
    _message = message;
}

  DefaultResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
  }
  num? _status;
  String? _message;
DefaultResponse copyWith({  num? status,
  String? message,
}) => DefaultResponse(  status: status ?? _status,
  message: message ?? _message,
);
  num? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }

}
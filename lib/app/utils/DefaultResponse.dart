import 'dart:convert';
DefaultResponse defaultResponseFromJson(String str) => DefaultResponse.fromJson(json.decode(str));
String defaultResponseToJson(DefaultResponse data) => json.encode(data.toJson());
class DefaultResponse {
  DefaultResponse({
      this.status, 
      this.statusCode, 
      this.message,});

  DefaultResponse.fromJson(dynamic json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
  }
  String? status;
  num? statusCode;
  String? message;
DefaultResponse copyWith({  String? status,
  num? statusCode,
  String? message,
}) => DefaultResponse(  status: status ?? this.status,
  statusCode: statusCode ?? this.statusCode,
  message: message ?? this.message,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['status_code'] = statusCode;
    map['message'] = message;
    return map;
  }

}
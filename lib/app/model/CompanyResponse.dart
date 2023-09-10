import 'dart:convert';
/// status : 200
/// message : "Data Found"
/// data : [{"id":3,"company_name":"Shohai"},{"id":2,"company_name":"PHWC"},{"id":1,"company_name":"AppinionBD"}]

CompanyResponse companyResponseFromJson(String str) => CompanyResponse.fromJson(json.decode(str));
String companyResponseToJson(CompanyResponse data) => json.encode(data.toJson());
class CompanyResponse {
  CompanyResponse({
      num? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  CompanyResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  num? _status;
  String? _message;
  List<Data>? _data;
CompanyResponse copyWith({  num? status,
  String? message,
  List<Data>? data,
}) => CompanyResponse(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  num? get status => _status;
  String? get message => _message;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 3
/// company_name : "Shohai"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      num? id, 
      String? companyName,}){
    _id = id;
    _companyName = companyName;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _companyName = json['company_name'];
  }
  num? _id;
  String? _companyName;
Data copyWith({  num? id,
  String? companyName,
}) => Data(  id: id ?? _id,
  companyName: companyName ?? _companyName,
);
  num? get id => _id;
  String? get companyName => _companyName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['company_name'] = _companyName;
    return map;
  }

}
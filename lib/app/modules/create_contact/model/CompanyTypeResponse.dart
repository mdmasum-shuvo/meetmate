import 'dart:convert';
/// status : 200
/// message : "Data Found"
/// data : [{"id":2,"company_type":"New"},{"id":1,"company_type":"Start Up"}]

CompanyTypeResponse companyTypeResponseFromJson(String str) => CompanyTypeResponse.fromJson(json.decode(str));
String companyTypeResponseToJson(CompanyTypeResponse data) => json.encode(data.toJson());
class CompanyTypeResponse {
  CompanyTypeResponse({
      num? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  CompanyTypeResponse.fromJson(dynamic json) {
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
CompanyTypeResponse copyWith({  num? status,
  String? message,
  List<Data>? data,
}) => CompanyTypeResponse(  status: status ?? _status,
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

/// id : 2
/// company_type : "New"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      num? id, 
      String? companyType,}){
    _id = id;
    _companyType = companyType;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _companyType = json['company_type'];
  }
  num? _id;
  String? _companyType;
Data copyWith({  num? id,
  String? companyType,
}) => Data(  id: id ?? _id,
  companyType: companyType ?? _companyType,
);
  num? get id => _id;
  String? get companyType => _companyType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['company_type'] = _companyType;
    return map;
  }

}
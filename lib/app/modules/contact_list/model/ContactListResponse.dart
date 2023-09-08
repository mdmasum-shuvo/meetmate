import 'dart:convert';
/// status : 200
/// message : "Data Found"
/// data : [{"client_name":"Shahriar sagor","designation":"Software Engineer","id":4,"company_id":1,"company_type_id":1,"photo":"","company":{"id":1,"company_name":"AppinionBD"},"company_type":{"id":1,"company_type":"Start Up"}},{"client_name":"Shahriar sagor","designation":"Software Engineer","id":3,"company_id":1,"company_type_id":1,"photo":"","company":{"id":1,"company_name":"AppinionBD"},"company_type":{"id":1,"company_type":"Start Up"}}]

ContactListResponse contactListResponseFromJson(String str) => ContactListResponse.fromJson(json.decode(str));
String contactListResponseToJson(ContactListResponse data) => json.encode(data.toJson());
class ContactListResponse {
  ContactListResponse({
      num? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  ContactListResponse.fromJson(dynamic json) {
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
ContactListResponse copyWith({  num? status,
  String? message,
  List<Data>? data,
}) => ContactListResponse(  status: status ?? _status,
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

/// client_name : "Shahriar sagor"
/// designation : "Software Engineer"
/// id : 4
/// company_id : 1
/// company_type_id : 1
/// photo : ""
/// company : {"id":1,"company_name":"AppinionBD"}
/// company_type : {"id":1,"company_type":"Start Up"}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? clientName, 
      String? designation, 
      num? id, 
      num? companyId, 
      num? companyTypeId, 
      String? photo, 
      Company? company, 
      CompanyType? companyType,}){
    _clientName = clientName;
    _designation = designation;
    _id = id;
    _companyId = companyId;
    _companyTypeId = companyTypeId;
    _photo = photo;
    _company = company;
    _companyType = companyType;
}

  Data.fromJson(dynamic json) {
    _clientName = json['client_name'];
    _designation = json['designation'];
    _id = json['id'];
    _companyId = json['company_id'];
    _companyTypeId = json['company_type_id'];
    _photo = json['photo'];
    _company = json['company'] != null ? Company.fromJson(json['company']) : null;
    _companyType = json['company_type'] != null ? CompanyType.fromJson(json['company_type']) : null;
  }
  String? _clientName;
  String? _designation;
  num? _id;
  num? _companyId;
  num? _companyTypeId;
  String? _photo;
  Company? _company;
  CompanyType? _companyType;
Data copyWith({  String? clientName,
  String? designation,
  num? id,
  num? companyId,
  num? companyTypeId,
  String? photo,
  Company? company,
  CompanyType? companyType,
}) => Data(  clientName: clientName ?? _clientName,
  designation: designation ?? _designation,
  id: id ?? _id,
  companyId: companyId ?? _companyId,
  companyTypeId: companyTypeId ?? _companyTypeId,
  photo: photo ?? _photo,
  company: company ?? _company,
  companyType: companyType ?? _companyType,
);
  String? get clientName => _clientName;
  String? get designation => _designation;
  num? get id => _id;
  num? get companyId => _companyId;
  num? get companyTypeId => _companyTypeId;
  String? get photo => _photo;
  Company? get company => _company;
  CompanyType? get companyType => _companyType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['client_name'] = _clientName;
    map['designation'] = _designation;
    map['id'] = _id;
    map['company_id'] = _companyId;
    map['company_type_id'] = _companyTypeId;
    map['photo'] = _photo;
    if (_company != null) {
      map['company'] = _company?.toJson();
    }
    if (_companyType != null) {
      map['company_type'] = _companyType?.toJson();
    }
    return map;
  }

}

/// id : 1
/// company_type : "Start Up"

CompanyType companyTypeFromJson(String str) => CompanyType.fromJson(json.decode(str));
String companyTypeToJson(CompanyType data) => json.encode(data.toJson());
class CompanyType {
  CompanyType({
      num? id, 
      String? companyType,}){
    _id = id;
    _companyType = companyType;
}

  CompanyType.fromJson(dynamic json) {
    _id = json['id'];
    _companyType = json['company_type'];
  }
  num? _id;
  String? _companyType;
CompanyType copyWith({  num? id,
  String? companyType,
}) => CompanyType(  id: id ?? _id,
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

/// id : 1
/// company_name : "AppinionBD"

Company companyFromJson(String str) => Company.fromJson(json.decode(str));
String companyToJson(Company data) => json.encode(data.toJson());
class Company {
  Company({
      num? id, 
      String? companyName,}){
    _id = id;
    _companyName = companyName;
}

  Company.fromJson(dynamic json) {
    _id = json['id'];
    _companyName = json['company_name'];
  }
  num? _id;
  String? _companyName;
Company copyWith({  num? id,
  String? companyName,
}) => Company(  id: id ?? _id,
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
import 'dart:convert';
/// status : 200
/// message : "Data Found"
/// data : [{"name":"Super Admin","email":"superadmin@example.com","website":"","company_name":"","designation_name":"","photo":""}]

ProfileResponse profileResponseFromJson(String str) => ProfileResponse.fromJson(json.decode(str));
String profileResponseToJson(ProfileResponse data) => json.encode(data.toJson());
class ProfileResponse {
  ProfileResponse({
      num? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  ProfileResponse.fromJson(dynamic json) {
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
ProfileResponse copyWith({  num? status,
  String? message,
  List<Data>? data,
}) => ProfileResponse(  status: status ?? _status,
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

/// name : "Super Admin"
/// email : "superadmin@example.com"
/// website : ""
/// company_name : ""
/// designation_name : ""
/// photo : ""

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? name, 
      String? email, 
      String? website, 
      String? companyName, 
      String? designationName, 
      String? photo,}){
    _name = name;
    _email = email;
    _website = website;
    _companyName = companyName;
    _designationName = designationName;
    _photo = photo;
}

  Data.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _website = json['website'];
    _companyName = json['company_name'];
    _designationName = json['designation_name'];
    _photo = json['photo'];
  }
  String? _name;
  String? _email;
  String? _website;
  String? _companyName;
  String? _designationName;
  String? _photo;
Data copyWith({  String? name,
  String? email,
  String? website,
  String? companyName,
  String? designationName,
  String? photo,
}) => Data(  name: name ?? _name,
  email: email ?? _email,
  website: website ?? _website,
  companyName: companyName ?? _companyName,
  designationName: designationName ?? _designationName,
  photo: photo ?? _photo,
);
  String? get name => _name;
  String? get email => _email;
  String? get website => _website;
  String? get companyName => _companyName;
  String? get designationName => _designationName;
  String? get photo => _photo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['website'] = _website;
    map['company_name'] = _companyName;
    map['designation_name'] = _designationName;
    map['photo'] = _photo;
    return map;
  }

}
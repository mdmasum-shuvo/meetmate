import 'dart:convert';
/// status : 200
/// data : {"id":1,"user_id":0,"client_name":"Shahriar sagor","designation":"Software Engineer","company_id":1,"company_type_id":1,"phone_no":"01797245860","email":"srsagor007@gmail.com","website":"abc.com","address":"rest one","city":"test","state":"rerw","post_code":"123","country_id":1,"gender":1,"dob":"1995-05-01","piroty":1,"status":1,"nature":1,"deal_amount":"150","photo":"images/contact_lists/fZvggif09EiYTqB0HES4S0zWuTkgjvJBYntPhB8r.jpg","created_at":"2023-09-01T17:07:17.000000Z","updated_at":"2023-09-06T17:27:13.000000Z","company":{"id":1,"company_name":"AppinionBD"},"company_type":{"id":1,"company_type":"Start Up"}}
/// message : "Client User Profile Found"

ContactDetailResponse contactDetailResponseFromJson(String str) => ContactDetailResponse.fromJson(json.decode(str));
String contactDetailResponseToJson(ContactDetailResponse data) => json.encode(data.toJson());
class ContactDetailResponse {
  ContactDetailResponse({
      num? status, 
      Data? data, 
      String? message,}){
    _status = status;
    _data = data;
    _message = message;
}

  ContactDetailResponse.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  num? _status;
  Data? _data;
  String? _message;
ContactDetailResponse copyWith({  num? status,
  Data? data,
  String? message,
}) => ContactDetailResponse(  status: status ?? _status,
  data: data ?? _data,
  message: message ?? _message,
);
  num? get status => _status;
  Data? get data => _data;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['message'] = _message;
    return map;
  }

}

/// id : 1
/// user_id : 0
/// client_name : "Shahriar sagor"
/// designation : "Software Engineer"
/// company_id : 1
/// company_type_id : 1
/// phone_no : "01797245860"
/// email : "srsagor007@gmail.com"
/// website : "abc.com"
/// address : "rest one"
/// city : "test"
/// state : "rerw"
/// post_code : "123"
/// country_id : 1
/// gender : 1
/// dob : "1995-05-01"
/// piroty : 1
/// status : 1
/// nature : 1
/// deal_amount : "150"
/// photo : "images/contact_lists/fZvggif09EiYTqB0HES4S0zWuTkgjvJBYntPhB8r.jpg"
/// created_at : "2023-09-01T17:07:17.000000Z"
/// updated_at : "2023-09-06T17:27:13.000000Z"
/// company : {"id":1,"company_name":"AppinionBD"}
/// company_type : {"id":1,"company_type":"Start Up"}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      num? id, 
      num? userId, 
      String? clientName, 
      String? designation, 
      num? companyId, 
      num? companyTypeId, 
      String? phoneNo, 
      String? email, 
      String? website, 
      String? address, 
      String? city, 
      String? state, 
      String? postCode, 
      num? countryId, 
      num? gender, 
      String? dob, 
      num? piroty, 
      num? status, 
      num? nature, 
      String? dealAmount, 
      String? photo, 
      String? createdAt, 
      String? updatedAt, 
      Company? company, 
      CompanyType? companyType,}){
    _id = id;
    _userId = userId;
    _clientName = clientName;
    _designation = designation;
    _companyId = companyId;
    _companyTypeId = companyTypeId;
    _phoneNo = phoneNo;
    _email = email;
    _website = website;
    _address = address;
    _city = city;
    _state = state;
    _postCode = postCode;
    _countryId = countryId;
    _gender = gender;
    _dob = dob;
    _piroty = piroty;
    _status = status;
    _nature = nature;
    _dealAmount = dealAmount;
    _photo = photo;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _company = company;
    _companyType = companyType;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _clientName = json['client_name'];
    _designation = json['designation'];
    _companyId = json['company_id'];
    _companyTypeId = json['company_type_id'];
    _phoneNo = json['phone_no'];
    _email = json['email'];
    _website = json['website'];
    _address = json['address'];
    _city = json['city'];
    _state = json['state'];
    _postCode = json['post_code'];
    _countryId = json['country_id'];
    _gender = json['gender'];
    _dob = json['dob'];
    _piroty = json['piroty'];
    _status = json['status'];
    _nature = json['nature'];
    _dealAmount = json['deal_amount'];
    _photo = json['photo'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _company = json['company'] != null ? Company.fromJson(json['company']) : null;
    _companyType = json['company_type'] != null ? CompanyType.fromJson(json['company_type']) : null;
  }
  num? _id;
  num? _userId;
  String? _clientName;
  String? _designation;
  num? _companyId;
  num? _companyTypeId;
  String? _phoneNo;
  String? _email;
  String? _website;
  String? _address;
  String? _city;
  String? _state;
  String? _postCode;
  num? _countryId;
  num? _gender;
  String? _dob;
  num? _piroty;
  num? _status;
  num? _nature;
  String? _dealAmount;
  String? _photo;
  String? _createdAt;
  String? _updatedAt;
  Company? _company;
  CompanyType? _companyType;
Data copyWith({  num? id,
  num? userId,
  String? clientName,
  String? designation,
  num? companyId,
  num? companyTypeId,
  String? phoneNo,
  String? email,
  String? website,
  String? address,
  String? city,
  String? state,
  String? postCode,
  num? countryId,
  num? gender,
  String? dob,
  num? piroty,
  num? status,
  num? nature,
  String? dealAmount,
  String? photo,
  String? createdAt,
  String? updatedAt,
  Company? company,
  CompanyType? companyType,
}) => Data(  id: id ?? _id,
  userId: userId ?? _userId,
  clientName: clientName ?? _clientName,
  designation: designation ?? _designation,
  companyId: companyId ?? _companyId,
  companyTypeId: companyTypeId ?? _companyTypeId,
  phoneNo: phoneNo ?? _phoneNo,
  email: email ?? _email,
  website: website ?? _website,
  address: address ?? _address,
  city: city ?? _city,
  state: state ?? _state,
  postCode: postCode ?? _postCode,
  countryId: countryId ?? _countryId,
  gender: gender ?? _gender,
  dob: dob ?? _dob,
  piroty: piroty ?? _piroty,
  status: status ?? _status,
  nature: nature ?? _nature,
  dealAmount: dealAmount ?? _dealAmount,
  photo: photo ?? _photo,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  company: company ?? _company,
  companyType: companyType ?? _companyType,
);
  num? get id => _id;
  num? get userId => _userId;
  String? get clientName => _clientName;
  String? get designation => _designation;
  num? get companyId => _companyId;
  num? get companyTypeId => _companyTypeId;
  String? get phoneNo => _phoneNo;
  String? get email => _email;
  String? get website => _website;
  String? get address => _address;
  String? get city => _city;
  String? get state => _state;
  String? get postCode => _postCode;
  num? get countryId => _countryId;
  num? get gender => _gender;
  String? get dob => _dob;
  num? get piroty => _piroty;
  num? get status => _status;
  num? get nature => _nature;
  String? get dealAmount => _dealAmount;
  String? get photo => _photo;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Company? get company => _company;
  CompanyType? get companyType => _companyType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['client_name'] = _clientName;
    map['designation'] = _designation;
    map['company_id'] = _companyId;
    map['company_type_id'] = _companyTypeId;
    map['phone_no'] = _phoneNo;
    map['email'] = _email;
    map['website'] = _website;
    map['address'] = _address;
    map['city'] = _city;
    map['state'] = _state;
    map['post_code'] = _postCode;
    map['country_id'] = _countryId;
    map['gender'] = _gender;
    map['dob'] = _dob;
    map['piroty'] = _piroty;
    map['status'] = _status;
    map['nature'] = _nature;
    map['deal_amount'] = _dealAmount;
    map['photo'] = _photo;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
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
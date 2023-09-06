import 'dart:convert';
/// status : 200
/// message : "Data Found"
/// data : [{"id":5,"user_id":1,"title":"test onew","meeting_date":"2023-09-02","start_time":"2023-09-02 12:30:00","end_time":"2023-09-02 14:30:00","location":1,"meeting_link":"TEST","piroty":1,"agenda":"test","status":1,"created_at":"2023-09-02T14:50:44.000000Z","updated_at":"2023-09-02T14:50:44.000000Z","participent":[{"id":5,"schedule_list_id":5,"contact_list_id":1,"created_at":"2023-09-02T14:50:44.000000Z","updated_at":"2023-09-02T14:50:44.000000Z","contact_list":{"id":1,"user_id":0,"client_name":"Shahriar sagor","designation":"Software Engineer","company_id":1,"company_type_id":1,"phone_no":"01797245860","email":"srsagor007@gmail.com","website":"abc.com","address":"rest one","city":"test","state":"rerw","post_code":"123","country_id":1,"gender":1,"dob":"1995-05-01","piroty":1,"status":1,"nature":1,"deal_amount":"150","photo":"images/contact_lists/fZvggif09EiYTqB0HES4S0zWuTkgjvJBYntPhB8r.jpg","created_at":"2023-09-01T17:07:17.000000Z","updated_at":"2023-09-06T17:27:13.000000Z"}}]}]

ScheduleResponse scheduleResponseFromJson(String str) => ScheduleResponse.fromJson(json.decode(str));
String scheduleResponseToJson(ScheduleResponse data) => json.encode(data.toJson());
class ScheduleResponse {
  ScheduleResponse({
      num? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  ScheduleResponse.fromJson(dynamic json) {
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
ScheduleResponse copyWith({  num? status,
  String? message,
  List<Data>? data,
}) => ScheduleResponse(  status: status ?? _status,
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

/// id : 5
/// user_id : 1
/// title : "test onew"
/// meeting_date : "2023-09-02"
/// start_time : "2023-09-02 12:30:00"
/// end_time : "2023-09-02 14:30:00"
/// location : 1
/// meeting_link : "TEST"
/// piroty : 1
/// agenda : "test"
/// status : 1
/// created_at : "2023-09-02T14:50:44.000000Z"
/// updated_at : "2023-09-02T14:50:44.000000Z"
/// participent : [{"id":5,"schedule_list_id":5,"contact_list_id":1,"created_at":"2023-09-02T14:50:44.000000Z","updated_at":"2023-09-02T14:50:44.000000Z","contact_list":{"id":1,"user_id":0,"client_name":"Shahriar sagor","designation":"Software Engineer","company_id":1,"company_type_id":1,"phone_no":"01797245860","email":"srsagor007@gmail.com","website":"abc.com","address":"rest one","city":"test","state":"rerw","post_code":"123","country_id":1,"gender":1,"dob":"1995-05-01","piroty":1,"status":1,"nature":1,"deal_amount":"150","photo":"images/contact_lists/fZvggif09EiYTqB0HES4S0zWuTkgjvJBYntPhB8r.jpg","created_at":"2023-09-01T17:07:17.000000Z","updated_at":"2023-09-06T17:27:13.000000Z"}}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      num? id, 
      num? userId, 
      String? title, 
      String? meetingDate, 
      String? startTime, 
      String? endTime, 
      num? location, 
      String? meetingLink, 
      num? piroty, 
      String? agenda, 
      num? status, 
      String? createdAt, 
      String? updatedAt, 
      List<Participent>? participent,}){
    _id = id;
    _userId = userId;
    _title = title;
    _meetingDate = meetingDate;
    _startTime = startTime;
    _endTime = endTime;
    _location = location;
    _meetingLink = meetingLink;
    _piroty = piroty;
    _agenda = agenda;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _participent = participent;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _title = json['title'];
    _meetingDate = json['meeting_date'];
    _startTime = json['start_time'];
    _endTime = json['end_time'];
    _location = json['location'];
    _meetingLink = json['meeting_link'];
    _piroty = json['piroty'];
    _agenda = json['agenda'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    if (json['participent'] != null) {
      _participent = [];
      json['participent'].forEach((v) {
        _participent?.add(Participent.fromJson(v));
      });
    }
  }
  num? _id;
  num? _userId;
  String? _title;
  String? _meetingDate;
  String? _startTime;
  String? _endTime;
  num? _location;
  String? _meetingLink;
  num? _piroty;
  String? _agenda;
  num? _status;
  String? _createdAt;
  String? _updatedAt;
  List<Participent>? _participent;
Data copyWith({  num? id,
  num? userId,
  String? title,
  String? meetingDate,
  String? startTime,
  String? endTime,
  num? location,
  String? meetingLink,
  num? piroty,
  String? agenda,
  num? status,
  String? createdAt,
  String? updatedAt,
  List<Participent>? participent,
}) => Data(  id: id ?? _id,
  userId: userId ?? _userId,
  title: title ?? _title,
  meetingDate: meetingDate ?? _meetingDate,
  startTime: startTime ?? _startTime,
  endTime: endTime ?? _endTime,
  location: location ?? _location,
  meetingLink: meetingLink ?? _meetingLink,
  piroty: piroty ?? _piroty,
  agenda: agenda ?? _agenda,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  participent: participent ?? _participent,
);
  num? get id => _id;
  num? get userId => _userId;
  String? get title => _title;
  String? get meetingDate => _meetingDate;
  String? get startTime => _startTime;
  String? get endTime => _endTime;
  num? get location => _location;
  String? get meetingLink => _meetingLink;
  num? get piroty => _piroty;
  String? get agenda => _agenda;
  num? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  List<Participent>? get participent => _participent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['title'] = _title;
    map['meeting_date'] = _meetingDate;
    map['start_time'] = _startTime;
    map['end_time'] = _endTime;
    map['location'] = _location;
    map['meeting_link'] = _meetingLink;
    map['piroty'] = _piroty;
    map['agenda'] = _agenda;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_participent != null) {
      map['participent'] = _participent?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 5
/// schedule_list_id : 5
/// contact_list_id : 1
/// created_at : "2023-09-02T14:50:44.000000Z"
/// updated_at : "2023-09-02T14:50:44.000000Z"
/// contact_list : {"id":1,"user_id":0,"client_name":"Shahriar sagor","designation":"Software Engineer","company_id":1,"company_type_id":1,"phone_no":"01797245860","email":"srsagor007@gmail.com","website":"abc.com","address":"rest one","city":"test","state":"rerw","post_code":"123","country_id":1,"gender":1,"dob":"1995-05-01","piroty":1,"status":1,"nature":1,"deal_amount":"150","photo":"images/contact_lists/fZvggif09EiYTqB0HES4S0zWuTkgjvJBYntPhB8r.jpg","created_at":"2023-09-01T17:07:17.000000Z","updated_at":"2023-09-06T17:27:13.000000Z"}

Participent participentFromJson(String str) => Participent.fromJson(json.decode(str));
String participentToJson(Participent data) => json.encode(data.toJson());
class Participent {
  Participent({
      num? id, 
      num? scheduleListId, 
      num? contactListId, 
      String? createdAt, 
      String? updatedAt, 
      ContactList? contactList,}){
    _id = id;
    _scheduleListId = scheduleListId;
    _contactListId = contactListId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _contactList = contactList;
}

  Participent.fromJson(dynamic json) {
    _id = json['id'];
    _scheduleListId = json['schedule_list_id'];
    _contactListId = json['contact_list_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _contactList = json['contact_list'];
  }
  num? _id;
  num? _scheduleListId;
  num? _contactListId;
  String? _createdAt;
  String? _updatedAt;
  ContactList? _contactList;
Participent copyWith({  num? id,
  num? scheduleListId,
  num? contactListId,
  String? createdAt,
  String? updatedAt,
  ContactList? contactList,
}) => Participent(  id: id ?? _id,
  scheduleListId: scheduleListId ?? _scheduleListId,
  contactListId: contactListId ?? _contactListId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  contactList: contactList ?? _contactList,
);
  num? get id => _id;
  num? get scheduleListId => _scheduleListId;
  num? get contactListId => _contactListId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  ContactList? get contactList => _contactList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['schedule_list_id'] = _scheduleListId;
    map['contact_list_id'] = _contactListId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['contact_list'] = _contactList;
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

ContactList contactListFromJson(String str) => ContactList.fromJson(json.decode(str));
String contactListToJson(ContactList data) => json.encode(data.toJson());
class ContactList {
  ContactList({
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
      String? updatedAt,}){
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
}

  ContactList.fromJson(dynamic json) {
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
ContactList copyWith({  num? id,
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
}) => ContactList(  id: id ?? _id,
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
    return map;
  }

}
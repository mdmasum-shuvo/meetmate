import 'dart:convert';
/// status : 200
/// message : "Data Found"
/// data : [{"title":"test onew","meeting_date":"2023-09-02","start_time":"2023-09-02 12:30:00","end_time":"2023-09-02 14:30:00","location":1,"id":5,"meeting_location":"Online","participent":[{"id":5,"schedule_list_id":5,"contact_list_id":1,"created_at":"2023-09-02T14:50:44.000000Z","updated_at":"2023-09-02T14:50:44.000000Z"}]}]

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

/// title : "test onew"
/// meeting_date : "2023-09-02"
/// start_time : "2023-09-02 12:30:00"
/// end_time : "2023-09-02 14:30:00"
/// location : 1
/// id : 5
/// meeting_location : "Online"
/// participent : [{"id":5,"schedule_list_id":5,"contact_list_id":1,"created_at":"2023-09-02T14:50:44.000000Z","updated_at":"2023-09-02T14:50:44.000000Z"}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? title, 
      String? meetingDate, 
      String? startTime, 
      String? endTime, 
      num? location, 
      num? id, 
      String? meetingLocation, 
      List<Participent>? participent,}){
    _title = title;
    _meetingDate = meetingDate;
    _startTime = startTime;
    _endTime = endTime;
    _location = location;
    _id = id;
    _meetingLocation = meetingLocation;
    _participent = participent;
}

  Data.fromJson(dynamic json) {
    _title = json['title'];
    _meetingDate = json['meeting_date'];
    _startTime = json['start_time'];
    _endTime = json['end_time'];
    _location = json['location'];
    _id = json['id'];
    _meetingLocation = json['meeting_location'];
    if (json['participent'] != null) {
      _participent = [];
      json['participent'].forEach((v) {
        _participent?.add(Participent.fromJson(v));
      });
    }
  }
  String? _title;
  String? _meetingDate;
  String? _startTime;
  String? _endTime;
  num? _location;
  num? _id;
  String? _meetingLocation;
  List<Participent>? _participent;
Data copyWith({  String? title,
  String? meetingDate,
  String? startTime,
  String? endTime,
  num? location,
  num? id,
  String? meetingLocation,
  List<Participent>? participent,
}) => Data(  title: title ?? _title,
  meetingDate: meetingDate ?? _meetingDate,
  startTime: startTime ?? _startTime,
  endTime: endTime ?? _endTime,
  location: location ?? _location,
  id: id ?? _id,
  meetingLocation: meetingLocation ?? _meetingLocation,
  participent: participent ?? _participent,
);
  String? get title => _title;
  String? get meetingDate => _meetingDate;
  String? get startTime => _startTime;
  String? get endTime => _endTime;
  num? get location => _location;
  num? get id => _id;
  String? get meetingLocation => _meetingLocation;
  List<Participent>? get participent => _participent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['meeting_date'] = _meetingDate;
    map['start_time'] = _startTime;
    map['end_time'] = _endTime;
    map['location'] = _location;
    map['id'] = _id;
    map['meeting_location'] = _meetingLocation;
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

Participent participentFromJson(String str) => Participent.fromJson(json.decode(str));
String participentToJson(Participent data) => json.encode(data.toJson());
class Participent {
  Participent({
      num? id, 
      num? scheduleListId, 
      num? contactListId, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _scheduleListId = scheduleListId;
    _contactListId = contactListId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Participent.fromJson(dynamic json) {
    _id = json['id'];
    _scheduleListId = json['schedule_list_id'];
    _contactListId = json['contact_list_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  num? _scheduleListId;
  num? _contactListId;
  String? _createdAt;
  String? _updatedAt;
Participent copyWith({  num? id,
  num? scheduleListId,
  num? contactListId,
  String? createdAt,
  String? updatedAt,
}) => Participent(  id: id ?? _id,
  scheduleListId: scheduleListId ?? _scheduleListId,
  contactListId: contactListId ?? _contactListId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  num? get scheduleListId => _scheduleListId;
  num? get contactListId => _contactListId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['schedule_list_id'] = _scheduleListId;
    map['contact_list_id'] = _contactListId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}
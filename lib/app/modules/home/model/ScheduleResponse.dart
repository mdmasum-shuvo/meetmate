import 'dart:convert';
/// status : 200
/// message : "Data Found"
/// data : [{"id":5,"user_id":1,"title":"test onew","meeting_date":"2023-09-02","start_time":"2023-09-02 12:30:00","end_time":"2023-09-02 14:30:00","location":1,"meeting_link":"TEST","piroty":1,"agenda":"test","status":1,"created_at":"2023-09-02T14:50:44.000000Z","updated_at":"2023-09-02T14:50:44.000000Z"}]

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
      String? updatedAt,}){
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
    return map;
  }

}
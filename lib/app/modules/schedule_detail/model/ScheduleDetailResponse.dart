/// status : 200
/// data : {"id":3,"user_id":0,"title":"test onew","meeting_date":"2023-09-02","start_time":"2023-09-02 12:30:00","end_time":"2023-09-02 14:30:00","location":1,"meeting_link":"TEST","piroty":1,"agenda":"test","status":1,"created_at":"2023-09-01T18:55:30.000000Z","updated_at":"2023-09-02T14:50:57.000000Z","meeting_location":"Online","meeting_piroty":"Low","meeting_status":"Active","participent_list":[{"id":2,"user_id":0,"client_name":"Shahriar sagor"}]}
/// message : "Schedule Deatils Found"

class ScheduleDetailResponse {
  ScheduleDetailResponse({
      num? status, 
      Data? data, 
      String? message,}){
    _status = status;
    _data = data;
    _message = message;
}

  ScheduleDetailResponse.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  num? _status;
  Data? _data;
  String? _message;
ScheduleDetailResponse copyWith({  num? status,
  Data? data,
  String? message,
}) => ScheduleDetailResponse(  status: status ?? _status,
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

/// id : 3
/// user_id : 0
/// title : "test onew"
/// meeting_date : "2023-09-02"
/// start_time : "2023-09-02 12:30:00"
/// end_time : "2023-09-02 14:30:00"
/// location : 1
/// meeting_link : "TEST"
/// piroty : 1
/// agenda : "test"
/// status : 1
/// created_at : "2023-09-01T18:55:30.000000Z"
/// updated_at : "2023-09-02T14:50:57.000000Z"
/// meeting_location : "Online"
/// meeting_piroty : "Low"
/// meeting_status : "Active"
/// participent_list : [{"id":2,"user_id":0,"client_name":"Shahriar sagor"}]

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
      String? meetingLocation, 
      String? meetingPiroty, 
      String? meetingStatus, 
      List<ParticipentList>? participentList,}){
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
    _meetingLocation = meetingLocation;
    _meetingPiroty = meetingPiroty;
    _meetingStatus = meetingStatus;
    _participentList = participentList;
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
    _meetingLocation = json['meeting_location'];
    _meetingPiroty = json['meeting_piroty'];
    _meetingStatus = json['meeting_status'];
    if (json['participent_list'] != null) {
      _participentList = [];
      json['participent_list'].forEach((v) {
        _participentList?.add(ParticipentList.fromJson(v));
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
  String? _meetingLocation;
  String? _meetingPiroty;
  String? _meetingStatus;
  List<ParticipentList>? _participentList;
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
  String? meetingLocation,
  String? meetingPiroty,
  String? meetingStatus,
  List<ParticipentList>? participentList,
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
  meetingLocation: meetingLocation ?? _meetingLocation,
  meetingPiroty: meetingPiroty ?? _meetingPiroty,
  meetingStatus: meetingStatus ?? _meetingStatus,
  participentList: participentList ?? _participentList,
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
  String? get meetingLocation => _meetingLocation;
  String? get meetingPiroty => _meetingPiroty;
  String? get meetingStatus => _meetingStatus;
  List<ParticipentList>? get participentList => _participentList;

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
    map['meeting_location'] = _meetingLocation;
    map['meeting_piroty'] = _meetingPiroty;
    map['meeting_status'] = _meetingStatus;
    if (_participentList != null) {
      map['participent_list'] = _participentList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2
/// user_id : 0
/// client_name : "Shahriar sagor"

class ParticipentList {
  ParticipentList({
      num? id, 
      num? userId, 
      String? clientName,}){
    _id = id;
    _userId = userId;
    _clientName = clientName;
}

  ParticipentList.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _clientName = json['client_name'];
  }
  num? _id;
  num? _userId;
  String? _clientName;
ParticipentList copyWith({  num? id,
  num? userId,
  String? clientName,
}) => ParticipentList(  id: id ?? _id,
  userId: userId ?? _userId,
  clientName: clientName ?? _clientName,
);
  num? get id => _id;
  num? get userId => _userId;
  String? get clientName => _clientName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['client_name'] = _clientName;
    return map;
  }

}
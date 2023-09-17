import 'Participent.dart';

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
/// meeting_location : "Online"
/// meeting_piroty : "Low"
/// meeting_status : "Active"
/// participent : [{"id":6,"schedule_list_id":3,"contact_list_id":2,"contact_list":{"id":2,"user_id":0,"client_name":"Shahriar sagor","designation":"Software Engineer"}}]

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
      String? meetingLocation, 
      String? meetingPiroty, 
      String? meetingStatus, 
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
    _meetingLocation = meetingLocation;
    _meetingPiroty = meetingPiroty;
    _meetingStatus = meetingStatus;
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
    _meetingLocation = json['meeting_location'];
    _meetingPiroty = json['meeting_piroty'];
    _meetingStatus = json['meeting_status'];
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
  String? _meetingLocation;
  String? _meetingPiroty;
  String? _meetingStatus;
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
  String? meetingLocation,
  String? meetingPiroty,
  String? meetingStatus,
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
  meetingLocation: meetingLocation ?? _meetingLocation,
  meetingPiroty: meetingPiroty ?? _meetingPiroty,
  meetingStatus: meetingStatus ?? _meetingStatus,
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
  String? get meetingLocation => _meetingLocation;
  String? get meetingPiroty => _meetingPiroty;
  String? get meetingStatus => _meetingStatus;
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
    map['meeting_location'] = _meetingLocation;
    map['meeting_piroty'] = _meetingPiroty;
    map['meeting_status'] = _meetingStatus;
    if (_participent != null) {
      map['participent'] = _participent?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}
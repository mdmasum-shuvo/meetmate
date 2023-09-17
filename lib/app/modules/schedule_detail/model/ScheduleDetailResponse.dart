import 'Data.dart';

/// status : 200
/// data : {"id":3,"user_id":0,"title":"test onew","meeting_date":"2023-09-02","start_time":"2023-09-02 12:30:00","end_time":"2023-09-02 14:30:00","location":1,"meeting_link":"TEST","piroty":1,"agenda":"test","status":1,"meeting_location":"Online","meeting_piroty":"Low","meeting_status":"Active","participent":[{"id":6,"schedule_list_id":3,"contact_list_id":2,"contact_list":{"id":2,"user_id":0,"client_name":"Shahriar sagor","designation":"Software Engineer"}}]}
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
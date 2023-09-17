
/// id : 6
/// schedule_list_id : 3
/// contact_list_id : 2
/// contact_list : {"id":2,"user_id":0,"client_name":"Shahriar sagor","designation":"Software Engineer"}

class Participent {
  Participent({
      num? id, 
      num? scheduleListId, 
      num? contactListId, 
     }){
    _id = id;
    _scheduleListId = scheduleListId;
    _contactListId = contactListId;
}

  Participent.fromJson(dynamic json) {
    _id = json['id'];
    _scheduleListId = json['schedule_list_id'];
    _contactListId = json['contact_list_id'];
  }
  num? _id;
  num? _scheduleListId;
  num? _contactListId;
Participent copyWith({  num? id,
  num? scheduleListId,
  num? contactListId,
}) => Participent(  id: id ?? _id,
  scheduleListId: scheduleListId ?? _scheduleListId,
  contactListId: contactListId ?? _contactListId,
);
  num? get id => _id;
  num? get scheduleListId => _scheduleListId;
  num? get contactListId => _contactListId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['schedule_list_id'] = _scheduleListId;
    map['contact_list_id'] = _contactListId;
    return map;
  }

}
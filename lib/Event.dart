import 'dart:io';
import 'dart:convert';

import 'package:flappysports/flappysports.dart';


import 'School.dart';

class Event {
  int eventId;
  String name;
  int sportId;
  int yearId;
  int hostingSchoolId;
  int? conferenceId;
  DateTime? startTimestamp;
  DateTime? endTimestamp;
  List<School>? schools;


  Event({
    this.eventId = 0,
    this.name = 'None',
    this.sportId = 0,
    this.yearId = 0,
    this.hostingSchoolId = 0,
    this.conferenceId = 0,
    this.startTimestamp,
    this.endTimestamp,
    this.schools,
  });

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      eventId: map['event_id'],
      name: map['name'],
      sportId: map['sport_id'],
      yearId: map['year_id'],
      hostingSchoolId: map['hosting_school_id'],
      conferenceId: map['conference_id'],
      startTimestamp: DateTime.parse(map['start_timestamp']),
      endTimestamp: DateTime.parse(map['end_timestamp']),
    );
  }

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      eventId: json['item']['event']['event_id'],
      name: json['item']['event']['name'],
      sportId: json['item']['event']['sport_id'],
      yearId: json['item']['event']['year_id'],
      hostingSchoolId: json['item']['event']['hosting_school_id'],
      conferenceId: json['item']['event']['conference_id'],
      startTimestamp: DateTime.parse(json['item']['event']['start_timestamp']),
      endTimestamp: json['item']['event']['end_timestamp'] != null
          ? DateTime.parse(json['item']['event']['end_timestamp'])
          : null,
      schools: json['item']['schools']
          .map<School>((e) => School.fromMap(e))
          .toList()
    );
  }
}

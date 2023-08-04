import 'dart:io';
import 'dart:convert';

import 'package:flappysports/flappysports.dart';

import 'School.dart';
import 'EventVideo.dart';

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
  List<EventVideo>? videoStreams;

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
    this.videoStreams,
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
        eventId: json['item']['event']['event_id'] ?? 0,
        name: json['item']['event']['name'] ?? '',
        sportId: json['item']['event']['sport_id'] ?? 0,
        yearId: json['item']['event']['year_id'] ?? 0,
        hostingSchoolId: json['item']['event']['hosting_school_id'] ?? 0,
        conferenceId: json['item']['event']['conference_id'] ?? 0,
        startTimestamp:
            DateTime.parse(json['item']['event']['start_timestamp']),
        endTimestamp: json['item']['event']['end_timestamp'] != null
            ? DateTime.parse(json['item']['event']['end_timestamp'])
            : null,
        schools: json['item']['schools']
            .map<School>((e) => School.fromMap(e))
            .toList() as List<School>,
        videoStreams: json['item']['event_video'][0] != null
            ? json['item']['event_video']
                .map<EventVideo>((e) => EventVideo.fromMap(e))
                .toList() as List<EventVideo>
            : null);
  }
}

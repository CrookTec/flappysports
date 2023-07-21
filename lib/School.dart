import 'package:flappysports/flappysports.dart';
import 'Conference.dart';

class School {
  int schoolId;
  String name;
  String abbreviation;
  String mascot;
  int activeFlag;
  int partnerFlag;
  Conference? conference;

  School(
      {this.schoolId = 0,
      this.name = 'None',
      this.abbreviation = 'None',
      this.mascot = 'None',
      this.activeFlag = 0,
      this.partnerFlag = 0,
      this.conference});

  factory School.fromMap(Map<String, dynamic> map) {
    return School(
      schoolId: map['school_id'] ?? 0,
      name: map['name'] ?? '',
      abbreviation: map['abbreviation'] ?? '',
      mascot: map['mascot'] ?? '',
      activeFlag: map['active_flag'] ?? 0,
      partnerFlag: map['partner_flag'] ?? 0,
    );
  }

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
        schoolId: json['item']['school']['school_id'],
        name: json['item']['school']['name'],
        abbreviation: json['item']['school']['abbreviation'],
        mascot: json['item']['school']['mascot'],
        activeFlag: json['item']['school']['active_flag'],
        partnerFlag: json['item']['school']['partner_flag'] ?? 0,
        conference: json['item']['conference'] != null
            ? json['item']['conference']
                .map<Conference>((e) => Conference.fromMap(e))
                .toList()[0] as Conference?
            : null);
  }
}

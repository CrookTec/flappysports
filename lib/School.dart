import 'package:flappysports/flappysports.dart';

class School {
  int schoolId;
  String name;
  String abbreviation;
  String mascot;
  int activeFlag;

  School({
    this.schoolId=0,
    this.name='None',
    this.abbreviation='None',
    this.mascot='None',
    this.activeFlag=0,
  });

  factory School.fromMap(Map<String, dynamic> map) {
    return School(
      schoolId: map['school_id'],
      name: map['name'],
      abbreviation: map['abbreviation'],
      mascot: map['mascot'],
      activeFlag: map['active_flag'],
    );
  }

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      schoolId: json['school_id'],
      name: json['name'],
      abbreviation: json['abbreviation'],
      mascot: json['mascot'],
      activeFlag: json['active_flag'],
    );
  }
}
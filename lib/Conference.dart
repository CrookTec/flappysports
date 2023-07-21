import 'package:flappysports/flappysports.dart';

class Conference {
  int conferenceId;
  String name;
  int activeFlag;
  int seq;

  Conference({
    this.conferenceId = 0,
    this.name = '',
    this.activeFlag = 0,
    this.seq = 0,
  });

  factory Conference.fromMap(Map<String, dynamic> map) {
    return Conference(
      conferenceId: map['conference_id'] ?? 0,
      name: map['name'] ?? '',
      activeFlag: map['active_flag'] ?? 0,
      seq: map['seq'] ?? 0,
    );
  }

  factory Conference.fromJson(Map<String, dynamic> json) {
    return Conference(
      conferenceId: json['item']['conference']['conference_id'],
      name: json['item']['conference']['name'],
      activeFlag: json['item']['conference']['active_flag'],
      seq: json['item']['conference']['seq'],
    );
  }
}

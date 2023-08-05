class EventAudio {
  String channel;
  int eventId;
  int EventAudioId;
  String link;
  int schoolId;

  EventAudio({
    required this.channel,
    required this.eventId,
    required this.EventAudioId,
    required this.link,
    required this.schoolId,
  });

  factory EventAudio.fromJson(Map<String, dynamic> json) {
    return EventAudio(
      channel: json['channel'],
      eventId: json['event_id'],
      EventAudioId: json['event_video_id'],
      link: json['link'],
      schoolId: json['school_id'],
    );
  }

  factory EventAudio.fromMap(Map<String, dynamic> map) {
    return EventAudio(
      channel: map['channel'] ?? '',
      eventId: map['event_id'] ?? 0,
      EventAudioId: map['event_video_id'] ?? 0,
      link: map['link'] ?? '',
      schoolId: map['school_id'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'channel': channel,
      'event_id': eventId,
      'event_video_id': EventAudioId,
      'link': link,
      'school_id': schoolId,
    };
  }
}

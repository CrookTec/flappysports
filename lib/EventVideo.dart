class EventVideo {
  String channel;
  int eventId;
  int eventVideoId;
  String link;
  int schoolId;
  String sourceVideoId;

  EventVideo({
    required this.channel,
    required this.eventId,
    required this.eventVideoId,
    required this.link,
    required this.schoolId,
    required this.sourceVideoId,
  });

  factory EventVideo.fromJson(Map<String, dynamic> json) {
    return EventVideo(
      channel: json['channel'],
      eventId: json['event_id'],
      eventVideoId: json['event_video_id'],
      link: json['link'],
      schoolId: json['school_id'],
      sourceVideoId: json['source_video_id'],
    );
  }

  factory EventVideo.fromMap(Map<String, dynamic> map) {
    return EventVideo(
      channel: map['channel'] ?? '',
      eventId: map['event_id'] ?? 0,
      eventVideoId: map['event_video_id'] ?? 0,
      link: map['link'] ?? '',
      schoolId: map['school_id'] ?? 0,
      sourceVideoId: map['source_video_id'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'channel': channel,
      'event_id': eventId,
      'event_video_id': eventVideoId,
      'link': link,
      'school_id': schoolId,
      'source_video_id': sourceVideoId,
    };
  }
}

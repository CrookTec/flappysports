class Scoreboard {
  final int eventId;
  final int finalFlag;
  final int quarter;
  final int scoreboardId;
  final int team1ParticipantId;
  final int team1Score;
  final int team2ParticipantId;
  final int team2Score;

  Scoreboard({
    required this.eventId,
    required this.finalFlag,
    required this.quarter,
    required this.scoreboardId,
    required this.team1ParticipantId,
    required this.team1Score,
    required this.team2ParticipantId,
    required this.team2Score,
  });

  factory Scoreboard.fromJson(Map<String, dynamic> json) {
    return Scoreboard(
      eventId: json['item']['scoreboard']['event_id'],
      finalFlag: json['item']['scoreboard']['final_flag'],
      quarter: json['item']['scoreboard']['quarter'],
      scoreboardId: json['item']['scoreboard']['scoreboard_id'],
      team1ParticipantId: json['item']['scoreboard']['team1_participant_id'],
      team1Score: json['item']['scoreboard']['team1_score'],
      team2ParticipantId: json['item']['scoreboard']['team2_participant_id'],
      team2Score: json['item']['scoreboard']['team2_score'],
    );
  }
}

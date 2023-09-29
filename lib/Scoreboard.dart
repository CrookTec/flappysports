class Scoreboard {
  final int eventId;
  final int finalFlag;
  final int quarter;
  final int scoreboardId;
  final int team1SchoolId;
  final int team1Score;
  final int team2SchoolId;
  final int team2Score;

  Scoreboard({
    required this.eventId,
    required this.finalFlag,
    required this.quarter,
    required this.scoreboardId,
    required this.team1SchoolId,
    required this.team1Score,
    required this.team2SchoolId,
    required this.team2Score,
  });

  factory Scoreboard.fromJson(Map<String, dynamic> json) {
    return Scoreboard(
      eventId: json['item']['scoreboard']['event_id'],
      finalFlag: json['item']['scoreboard']['final_flag'],
      quarter: json['item']['scoreboard']['quarter'],
      scoreboardId: json['item']['scoreboard']['scoreboard_id'],
      team1SchoolId: json['item']['scoreboard']['team1_school_id'],
      team1Score: json['item']['scoreboard']['team1_score'],
      team2SchoolId: json['item']['scoreboard']['team2_school_id'],
      team2Score: json['item']['scoreboard']['team2_score'],
    );
  }
}

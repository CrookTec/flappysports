import 'package:flappysports/ApiConnection.dart';
import 'package:flappysports/Scoreboard.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flappysports/Event.dart';
import 'package:flappysports/School.dart';

import 'package:flappysports/flappysports.dart';

void main() {
  // test('Get Events', () async {
  //   ApiConnection api = ApiConnection('localhost:5000', 'api/v1/');
  //   List<Event> events = await api.getEvents(2023);
  //   for (Event event in events) {
  //     print(event.name);
  //     for (School school in event.schools!) {
  //       print(school.name);
  //     }
  //   }
  // });

  ApiConnection api = ApiConnection('api.svi.live', 'api/v1/');

  test('Get Schools', () async {
    List<School> schools = await api.getSchools();
    for (School school in schools) {
      print(school.name);
      print(school.conference?.name);
    }
  });

  test('Get Events', () async {
    List<Event> events = await api.getEvents(2023);

    for (Event event in events) {
      print(event.name);
      print(event.videoStreams);
      print(event.audioStreams);
    }
  });

  test('Get Conferences', () async {
    List<Conference> conferences = await api.getConferences();

    for (Conference conf in conferences) {
      print(conf.name);
    }
  });

  test('Get Scoreboard', () async {
    Scoreboard scoreboard = await api.getScoreboard(32);
    print(scoreboard.team1Score);
    print(scoreboard.team2Score);
  });
}

import 'package:flappysports/ApiConnection.dart';
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

  ApiConnection api = ApiConnection('localhost:5000', 'api/v1/');

  test('Get Schools', () async {
    List<School> schools = await api.getSchools();
    for (School school in schools) {
      print(school.name);
    }
  });

  test('Get Events', () async {
    List<Event> events = await api.getEvents(2023);

    for (Event event in events) {
      print(event.name);
    }
  });

  test('Get Conferences', () async {
    List<Conference> conferences = await api.getConferences();

    for (Conference conf in conferences) {
      print(conf.name);
    }
  });
}

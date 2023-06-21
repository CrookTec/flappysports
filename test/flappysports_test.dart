import 'package:flappysports/ApiConnection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flappysports/Event.dart';
import 'package:flappysports/School.dart';

import 'package:flappysports/flappysports.dart';

void main() {
  test('Get Events', () async {
    ApiConnection api = ApiConnection('localhost:5000','api/v1/');
    List<Event> events = await api.getEvents(2023);
    for (Event event in events) {
      print(event.name);
      for (School school in event.schools!) {
        print(school.name);
      }
      
    }
  });
}

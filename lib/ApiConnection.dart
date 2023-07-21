library flappysports;

import 'package:flappysports/flappysports.dart';
import 'package:http/http.dart';
import 'dart:io';
import 'dart:convert';

class ApiConnection {
  String baseUrl = 'localhost:5000';
  String postfix = 'api/v1/';

  ApiConnection(this.baseUrl, this.postfix);

  Future<List<Event>> getEvents(int year) async {
    final response =
        await get(Uri.https(baseUrl, postfix + 'events/' + year.toString()));
    // Uri.http(baseUrl, postfix + 'events'));
    //print(response.body);
    if (response.statusCode == 200) {
      List<Event> events = (jsonDecode(response.body) as List)
          .map((e) => Event.fromJson(e))
          .toList();
      return events;
    }
    throw ClientException('Server Error');
  }

  Future<List<Event>> getSchoolEvents(int year, String school) async {
    final response = await get(Uri.https(
        baseUrl, postfix + 'events/' + year.toString() + '/school/' + school));
    if (response.statusCode == 200) {
      List<Event> events = (jsonDecode(response.body) as List)
          .map((e) => Event.fromJson(e))
          .toList();
      return events;
    }
    throw ClientException('Server Error');
  }

  Future<List<School>> getSchools() async {
    final response = await get(Uri.https(baseUrl, postfix + 'schools'));
    if (response.statusCode == 200) {
      List<School> schools = (jsonDecode(response.body) as List)
          .map((e) => School.fromJson(e))
          .toList();
      return schools;
    }
    throw ClientException('Server Error');
  }

  Future<List<Conference>> getConferences() async {
    final response = await get(Uri.https(baseUrl, postfix + 'conferences'));
    if (response.statusCode == 200) {
      List<Conference> conferences = (jsonDecode(response.body) as List)
          .map((e) => Conference.fromJson(e))
          .toList();
      return conferences;
    }
    throw ClientException('Server Error');
  }
}

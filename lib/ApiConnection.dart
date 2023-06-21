library flappysports;

import 'package:http/http.dart';
import 'dart:io';
import 'dart:convert';

import 'Event.dart';

class ApiConnection {
  String baseUrl = 'localhost:5000';
  String postfix = 'api/v1/';

  ApiConnection(this.baseUrl,this.postfix);

  Future<List<Event>> getEvents(int year) async {
    final response = await get(
        Uri.http(baseUrl, postfix + 'events/' + year.toString()));
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


}
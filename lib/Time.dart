import 'dart:convert';

import 'package:http/http.dart';

Future<String> getTime() async {
  Response response = await get(
      Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Kolkata'));
  Map data = jsonDecode(response.body);
  String datetime = data['datetime'];
  DateTime now = DateTime.parse(datetime);
  String time = now.toString();
  return time;
}

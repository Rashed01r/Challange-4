import 'dart:convert';

import 'package:challenge4/api/apiApp.dart';
import 'package:http/http.dart' as http;

abstract class ApiClass {
  static Methodpost({required String endPoint}) async {
    try {
      var url = Uri.https(apiUrl, endPoint);
      var response = await http.get(url);
      var jsondata = json.decode(response.body);

      print('Response status: ${response.statusCode}');
      if (response.statusCode == 200) {
        //print(jsondata);
        return jsondata;
      } else {
        return false;
      }
    } catch (e) {
      print("Error");
    }
  }
}

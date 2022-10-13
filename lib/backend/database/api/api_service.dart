import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:yabatech_search/backend/apiKey/apiKey.dart';
import 'package:http/http.dart' as http;
import 'package:yabatech_search/backend/database/api/api_json.dart';

class ApiService {
  bool isDummyData = false;
  String apiKey = 'AIzaSyAEapKCa4Qvsg7ip40BnXjeRa1fn-8ovf0';

  Future<Map<String, dynamic>> fetchData(
      {required BuildContext context,
      required String queryTerm,
      String start = "0"}) async {
    try {
      if (!isDummyData) {
        String q = queryTerm.contains(' ')
            ? queryTerm.split(' ').join('%20')
            : queryTerm;

        final response = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start'),
        );
        if (response.statusCode == 200) {
          final jsonData = response.body;
          final respData = json.decode(jsonData);
          return respData;
        }
      }
    } catch (e) {
      print(
        e.toString(),
      );
    }
    return apiResponse;
  }
}

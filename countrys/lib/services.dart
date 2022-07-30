import 'dart:convert';
import 'package:countrys/country_list_model/datum.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Services {
  static var client = http.Client();

  static Future<List<CountrylistModel>?> countryListApi() async {
    String url = "https://mocki.io/v1/7fd047ba-ef12-4b36-a3a0-3ab4180e622c";
    debugPrint("url ::=> $url");

    List<CountrylistModel> countryList = [];
    try {
      final responce = await client.get(Uri.parse(url));
      if (responce.statusCode == 200) {
        final jsonRes = responce.body;
        final jsonMap = json.decode(jsonRes);
        countryList = (jsonMap['data'] as List)
            .map((e) => CountrylistModel.fromJson(e))
            .toList();
        return countryList;
      }
    } catch (e) {
      debugPrint('Error in $url =>:: $e');
    }
    return null;
  }
}

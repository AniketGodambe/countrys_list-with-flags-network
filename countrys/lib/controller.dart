import 'dart:convert';
import 'package:countrys/country_list_model/datum.dart';
import 'package:countrys/services.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();
  var countryList = <CountrylistModel>[].obs;
  Future getCountryList() async {
    try {
      var responce = await Services.countryListApi();
      if (responce != null) {
        print(json.encode(responce));
        countryList.assignAll(responce);

        return true;
      }
    } catch (e, stackTrace) {
      print(e);
      print(stackTrace);
    }
  }
}

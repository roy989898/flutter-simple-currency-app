import 'package:get/get.dart';
import 'package:dio/dio.dart';

import 'api/ApiManager.dart';
import 'api/RateClient.dart';
import 'dart:convert';

class Controller extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
    final apiManager = ApiManager();

    apiManager.getLatestRate('USD').then((value) {
      print('success');
      print(json.encode(value));
    }).catchError((error) {
      print('error');
      print(error);
    });
  }
}

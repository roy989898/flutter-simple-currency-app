import 'package:get/get.dart';
import 'package:dio/dio.dart';

import 'api/RateClient.dart';
import 'dart:convert';

class Controller extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
    final dio =
        Dio(); // Provide a dio instance// config your dio headers globally
    final client = RestClient(dio);

    client.getHistory('2018-01-01', '2018-09-01', 'USD').then((value) {
      print('success');
      print(json.encode(value));
    }).catchError((error) {
      print('error');
      print(error);
    });
  }
}

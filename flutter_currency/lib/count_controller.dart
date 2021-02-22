import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:math_expressions/math_expressions.dart';

import 'api/ApiManager.dart';
import 'api/RateClient.dart';
import 'dart:convert';

class Controller extends GetxController {
  var count = 0.obs;

  increment() {
    Parser p = new Parser();
    Expression exp = p.parse("3+3*8");
    String result = exp.evaluate(EvaluationType.REAL, null).toString();
    print(result);

    count++;
    final apiManager = ApiManager();

    apiManager.getCurrency().then((value) {
      print('success');
      print(json.encode(value));
    }).catchError((error) {
      print('error');
      print(error);
    });
  }
}

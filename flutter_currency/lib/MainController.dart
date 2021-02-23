import 'dart:convert';

import 'package:get/get.dart';

import 'api/ApiManager.dart';

class MainController extends GetxController {
  final ApiManager api = Get.find();
  RxList<String> currency = List<String>().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    api.getCurrency().then((List<String> value) {
      print(json.encode(value));
      currency.assignAll(value);
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }
}

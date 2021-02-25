import 'dart:async';
import 'dart:convert';

import 'package:flutter_currency/RxStore.dart';
import 'package:flutter_currency/api/LatestRateResponse.dart';
import 'package:get/get.dart';

import 'api/ApiManager.dart';

class MainController extends GetxController {
  final ApiManager api = Get.find();
  final RxStore _rxStore = Get.find();

  // RxList<String> currency = List<String>().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    api.getCurrency().then((List<String> value) {
      print(json.encode(value));
      _rxStore.rxCurrencySubject.add(value);
      if (value.length > 6) {
        _rxStore.rxToDisplayCurrencySubject.add(value.getRange(0, 7).toList());
      } else {
        _rxStore.rxToDisplayCurrencySubject.add(value.toList());
      }
      // currency.assignAll(value);
    }).catchError((e) {
      print(e);
    });

    api.getLatestRate('USD').then((LatestRateResponse value) {
      _rxStore.rxLatestRateResponse.add(value);
    }).catchError((e) {
      print(e);
    });
  }
}

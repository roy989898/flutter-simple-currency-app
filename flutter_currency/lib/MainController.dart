import 'dart:async';
import 'dart:convert';

import 'package:flutter_currency/RxStore.dart';
import 'package:get/get.dart';

import 'api/ApiManager.dart';

class MainController extends GetxController {
  final ApiManager api = Get.find();
  final RxStore _rxStore = Get.find();
  RxList<String> currency = List<String>().obs;
  StreamSubscription<List<String>> _rxCurrencySub;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    api.getCurrency().then((List<String> value) {
      print(json.encode(value));
      _rxStore.rxCurrencySubject.add(value);
      // currency.assignAll(value);
    }).catchError((e) {
      print(e);
    });

    _rxCurrencySub = _rxStore.rxCurrencySubject.listen((value) {
      currency.assignAll(value);
    });
  }

  @override
  void onClose() {
    _rxCurrencySub?.cancel();
    super.onClose();
  }
}

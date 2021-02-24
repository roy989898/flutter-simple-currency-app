import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart' as RxDart;
import 'package:flutter_currency/RxStore.dart';

import '../static_method.dart';

class FlagAndValueWdigetController extends GetxController {
  var answer = "".obs;
  var currency = "".obs;
  final RxStore _rxStore = Get.find();

  FlagAndValueWdigetController(String sCurrency) {
    currency.value = sCurrency;
  }

  @override
  void onInit() {
    super.onInit();

    answer.bindStream(_rxStore.rxFormula.map((String event) {
      print('in ${currency.value}  $event');
      return calculate(event);
    }));
  }
}

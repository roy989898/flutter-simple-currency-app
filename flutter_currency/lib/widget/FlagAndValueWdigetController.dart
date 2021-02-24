import 'package:flutter_currency/api/LatestRateResponse.dart';
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

    var rxF = RxDart.Rx.combineLatest3(
        _rxStore.rxFormula,
        _rxStore.rxSelectedBaseCurrency,
        _rxStore.rxLatestRateResponse, (String formula,
            String selectedBaseCurrency,
            LatestRateResponse latestRateResponse) {
      //  TODO

      double selectedBaseRate = latestRateResponse.rates[currency.value] /
          latestRateResponse.rates[selectedBaseCurrency];
      String baseInputAnswer = calculate(formula);
      var numberAnswer = double.parse(baseInputAnswer, (s) => 0);
      return (numberAnswer * selectedBaseRate).toString();
    });
    /*answer.bindStream(_rxStore.rxFormula.map((String event) {
      print('in ${currency.value}  $event');
      return calculate(event);
    }));*/

    answer.bindStream(rxF);
  }
}

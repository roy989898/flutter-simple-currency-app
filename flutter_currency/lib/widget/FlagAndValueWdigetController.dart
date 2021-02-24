import 'package:flutter_currency/api/LatestRateResponse.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart' as RxDart;
import 'package:flutter_currency/RxStore.dart';
import 'package:intl/intl.dart';
import '../colors.dart';
import '../static_method.dart';

class FlagAndValueWdigetController extends GetxController {
  var answer = "".obs;
  var visible = true.obs;
  var currency = "".obs;
  var formula = "".obs;
  var backgroundColor = dark.obs;
  final RxStore _rxStore = Get.find();

  FlagAndValueWdigetController(String sCurrency) {
    currency.value = sCurrency;
  }

  select() {
    print(currency.value + ' selected');
    _rxStore.rxSelectedBaseCurrency.add(currency.value);
  }

  @override
  void onInit() {
    super.onInit();
    backgroundColor
        .bindStream(_rxStore.rxSelectedBaseCurrency.map((selectedBaseCurrency) {
      if (selectedBaseCurrency == currency.value) {
        return currencySelectedColor;
      } else {
        return dark;
      }
    }));
    visible.bindStream(_rxStore.rxSelectedBaseCurrency
        .map((selectedBaseCurrency) => selectedBaseCurrency == currency.value));
    formula.bindStream(_rxStore.rxFormula);
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
      var f = NumberFormat("###.0#", "en_US");
      return f.format(numberAnswer * selectedBaseRate);
    });
    /*answer.bindStream(_rxStore.rxFormula.map((String event) {
      print('in ${currency.value}  $event');
      return calculate(event);
    }));*/

    answer.bindStream(rxF);
  }
}

import 'dart:async';

import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';
import '../../MainController.dart';
import 'package:flutter_currency/RxStore.dart';

class CalculatorController extends GetxController {
  final MainController mainC = Get.find();
  final RxStore _rxStore = Get.find();
  RxList<String> toDisplayCurrency = List<String>().obs;
  StreamSubscription<List<String>> _rxCurrencySub;

  CalculatorController() {}

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _rxCurrencySub = _rxStore.rxCurrencySubject.listen((currencys) {
      print(' mainC.currency.listen: ' + currencys.length.toString());
      if (currencys.length > 6) {
        toDisplayCurrency.assignAll(currencys.getRange(0, 7));
      } else {
        toDisplayCurrency.assignAll(currencys);
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
    print('onReady in CalculatorController');
  }

  @override
  void onClose() {
    _rxCurrencySub?.cancel();
    super.onClose();
  }

  keyIn(String input) {
    _rxStore..keyInFormula(input);
  }

  keyDel() {
    _rxStore.keyDelFormula();
  }

  String _calculate(String input) {
    try {
      Parser p = new Parser();
      Expression exp = p.parse(input);
      String result = exp.evaluate(EvaluationType.REAL, null).toString();
      return result;
    } catch (e) {
      print(e);
      if (input.length == 0) {
        return '';
      } else
        return _calculate(input.substring(0, input.length - 1));
    }
  }
}

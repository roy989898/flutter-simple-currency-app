import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

import 'api/LatestRateResponse.dart';

class DayHistory {
  DateTime date;
  Map<String, double> currencyRatePair;

  DayHistory(this.date, this.currencyRatePair);
}

class RxStore extends GetxService {
  final rxCurrencySubject = BehaviorSubject<List<String>>();
  final rxToDisplayCurrencySubject = BehaviorSubject<List<String>>();
  final rxSelectedBaseCurrency = BehaviorSubject<String>();
  final rxLatestRateResponse = BehaviorSubject<LatestRateResponse>();
  final rxFormula = BehaviorSubject<String>();
  final rxHistory = BehaviorSubject<List<DayHistory>>();
  final rxShowHistoryCurrency = BehaviorSubject<String>();
  var currenctFormula = '';

  keyInFormula(String input) {
    currenctFormula = currenctFormula + input;
    rxFormula.add(currenctFormula);
  }

  keyDelFormula() {
    if (currenctFormula.length > 0) {
      currenctFormula =
          currenctFormula.substring(0, currenctFormula.length - 1);
    }
    rxFormula.add(currenctFormula);
  }

  RxStore() {
    rxSelectedBaseCurrency.add('USD');
  }
}

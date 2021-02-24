import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

class RxStore extends GetxService {
  final rxCurrencySubject = BehaviorSubject<List<String>>();
  final rxSelectedBaseCurrency = BehaviorSubject<String>();
  final rxFormula = BehaviorSubject<String>();
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

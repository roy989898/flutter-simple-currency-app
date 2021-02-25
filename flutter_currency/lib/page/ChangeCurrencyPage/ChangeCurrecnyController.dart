import 'package:get/get.dart';

import '../../MainController.dart';
import '../../RxStore.dart';
import 'package:rxdart/rxdart.dart' as RxDart;

class ChangeCurrencyController extends GetxController {
  final MainController mainC = Get.find();
  final RxStore _rxStore = Get.find();
  RxList<ChangeCurrencyListItem> toDisplayCurrency =
      List<ChangeCurrencyListItem>().obs;

  @override
  void onInit() {
    super.onInit();
    /*RxDart.Rx.combineLatest2(
        _rxStore.rxCurrencySubject, _rxStore.rxToDisplayCurrencySubject,
        (List<String> rxCurrency, List<String> rxToDisplayCurrency) {
      rxCurrency.map((String currency) {
        bool isContain = rxToDisplayCurrency.contains(currency);
        return ChangeCurrencyListItem(currency, isContain);
      });
    });*/
    toDisplayCurrency.bindStream(RxDart.Rx.combineLatest2(
        _rxStore.rxCurrencySubject, _rxStore.rxToDisplayCurrencySubject,
        (List<String> rxCurrency, List<String> rxToDisplayCurrency) {
      List<ChangeCurrencyListItem> result = rxCurrency.map((String currency) {
        bool isContain = rxToDisplayCurrency.contains(currency);
        return ChangeCurrencyListItem(currency, isContain);
      }).toList();
      return result;
    }));
    // toDisplayCurrency.add(ChangeCurrencyListItem('USD', true));
  }
}

class ChangeCurrencyListItem {
  String currency;
  bool selected;

  ChangeCurrencyListItem(this.currency, this.selected);
}

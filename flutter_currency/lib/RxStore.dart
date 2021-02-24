import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

class RxStore extends GetxService {
  final rxCurrencySubject = BehaviorSubject<List<String>>();
}

import 'dart:async';

import 'package:rxdart/rxdart.dart' as RxDart;
import 'package:get/get.dart';

void main() {
  final subject1 = StreamController<int>();
  final subject2 = StreamController<int>();
/*  final subject1 = 8.obs;
  final subject2 = 10.obs;*/
  RxDart.Rx.combineLatest2(subject1.stream, subject2.stream, (int a, int b) {
    print('a: ' + a.toString());
    print('b: ' + b.toString());
    return a + b;
  }).listen((event) {
    print('event: ' + event.toString());
  });
/*  subject1.add(1);
  subject1.add(2);
  subject1.add(3);
  subject1.add(4);
  subject2.add(7);
  subject2.add(8);*/
}

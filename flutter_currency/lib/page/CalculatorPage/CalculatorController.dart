import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var calFormula = "".obs;

  keyIn(String input) {
    calFormula.value = calFormula.value + input;
  }

  keyDel() {
    if (calFormula.value.length > 0) {
      calFormula.value =
          calFormula.value.substring(0, calFormula.value.length - 1);
    }
  }
}

import 'package:math_expressions/math_expressions.dart';

String calculate(String input) {
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
      return calculate(input.substring(0, input.length - 1));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_currency/widget/CalculatorButton.dart';
import 'package:get/get.dart';
import '../../MainController.dart';
import '../../colors.dart';
import 'CalculatorController.dart';
import '../../widget/FlagAndValue.dart';

class CalculatorPage extends StatelessWidget {
  final CalculatorController c = Get.put(CalculatorController());
  final MainController mainC = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: dark,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // FlagAndValue('usd', 0),
                        ...createCurrencyWidgetList(c.toDisplayCurrency),
                        /*     Obx(
                          () => Text(
                            c.calFormula.string,
                            style: TextStyle(
                              fontSize: 40,
                              color: white,
                            ),
                          ),
                        ),
                        Obx(
                          () => Text(
                            c.answer.string,
                            style: TextStyle(
                              fontSize: 40,
                              color: white,
                            ),
                          ),
                        ),*/
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Ink(
                color: white,
                width: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '7',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '8',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '9',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '+',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '4',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '5',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '6',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '-',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '1',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '2',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '3',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: 'x',
                              onTap: (key) {
                                c.keyIn('*');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '.',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '0',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '<',
                              onTap: (key) {
                                c.keyDel();
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '/',
                              onTap: (key) {
                                c.keyIn(key);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> createCurrencyWidgetList(List<String> currency) {
    List<String> toUse = [];
/*    if (currency.length > 6) {
      toUse = currency.sublist(0, 7);
    } else*/
    toUse = currency;

    // List<Widget> wList =
    //     toUse.map((e) => Obx(() => FlagAndValue(e, 0))).toList();
    List<Widget> wList = toUse
        .map((e) => Expanded(
              flex: 1,
              child: FlagAndValue(e, 0),
            ))
        .toList();
    return wList;
  }
}

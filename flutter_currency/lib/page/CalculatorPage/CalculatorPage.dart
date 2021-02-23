import 'package:flutter/material.dart';
import 'package:flutter_currency/widget/CalculatorButton.dart';
import 'package:get/get.dart';
import '../../colors.dart';
import 'CalculatorController.dart';

class CalculatorPage extends StatelessWidget {
  final CalculatorController c = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: dark,
                child: Column(
                  children: [
                    Obx(
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
                    ),
                  ],
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
}

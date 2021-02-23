import 'package:flutter/material.dart';
import 'package:flutter_currency/widget/CalculatorButton.dart';

import '../colors.dart';

class CalculatorPage extends StatelessWidget {
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
                child: Text('Up'),
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
                              onTap: (key) {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '8',
                              onTap: (key) {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '9',
                              onTap: (key) {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '+',
                              onTap: (key) {},
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
                              onTap: (key) {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '5',
                              onTap: (key) {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '6',
                              onTap: (key) {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '-',
                              onTap: (key) {},
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
                              onTap: (key) {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '2',
                              onTap: (key) {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '3',
                              onTap: (key) {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: 'x',
                              onTap: (key) {},
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
                              onTap: (key) {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '0',
                              onTap: (key) {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '<',
                              onTap: (key) {},
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: CButton(
                              keyIn: '/',
                              onTap: (key) {},
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

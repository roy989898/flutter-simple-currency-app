import 'package:flutter/material.dart';

import '../HexColor.dart';
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
              child: Container(
                width: double.infinity,
                color: white,
                child: Text('Down'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

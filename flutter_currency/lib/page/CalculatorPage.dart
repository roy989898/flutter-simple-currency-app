import 'package:flutter/material.dart';

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
                color: Colors.red,
                child: Text('Up'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Text('Down'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeCurrency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String comeFromCurrency = Get.arguments;
    return SafeArea(
      child: Scaffold(
        body: Text('in change currency page: ' + comeFromCurrency),
      ),
    );
  }
}

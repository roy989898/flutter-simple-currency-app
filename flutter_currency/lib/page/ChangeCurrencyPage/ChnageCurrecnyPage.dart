import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../MainController.dart';
import '../../colors.dart';
import 'ChangeCurrecnyController.dart';

class ChangeCurrency extends StatelessWidget {
  final ChangeCurrencyController c = Get.find();
  final MainController mainC = Get.find();

  @override
  Widget build(BuildContext context) {
    String comeFromCurrency = Get.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: transparent,
        ),
        body: Container(
            color: white,
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Container(
                  child: Text('in change currency page: ' + comeFromCurrency)),
            )),
      ),
    );
  }
}

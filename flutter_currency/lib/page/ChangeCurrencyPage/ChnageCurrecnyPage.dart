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
                child: Obx(
                  () => ListView.builder(
                    itemCount: c.toDisplayCurrency.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(c.toDisplayCurrency[index].currency +
                          ' ' +
                          c.toDisplayCurrency[index].selected.toString());
                    },
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

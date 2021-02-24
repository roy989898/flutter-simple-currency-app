import 'package:flutter/material.dart';
import '../extension_function.dart';
import '../colors.dart';
import 'FlagAndValueWdigetController.dart';
import 'package:get/get.dart';

class FlagAndValue extends StatelessWidget {
  String currency = '';
  double value = 0.0;
  FlagAndValueWdigetController _c;

  FlagAndValue(String currency, double value) {
    this.currency = currency.toUpperCase();
    this.value = value;

    _c = Get.put(FlagAndValueWdigetController(currency), tag: currency);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: 55,
              child: ImageFlag(currency),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                currency,
                style: TextStyle(
                  color: currencyCountryColor,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
        Obx(() => Text(
              _c.answer.value,
              style: TextStyle(
                color: currencyValueColor,
                fontSize: 30,
              ),
            ))
      ],
    );
  }
}

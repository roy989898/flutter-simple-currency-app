import 'package:flutter/material.dart';
import '../extension_function.dart';
import '../colors.dart';

class FlagAndValue extends StatelessWidget {
  String currency = '';
  double value = 0.0;

  FlagAndValue(String currency, double value) {
    this.currency = currency.toUpperCase();
    this.value = value;
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
        Text(
          value.toString(),
          style: TextStyle(
            color: currencyValueColor,
            fontSize: 30,
          ),
        )
      ],
    );
  }
}

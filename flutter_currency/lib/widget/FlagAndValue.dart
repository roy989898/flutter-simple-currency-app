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
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _c.select(),
      child: Obx(() => Container(
            color: _c.backgroundColor.value,
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Obx(() => Visibility(
                        visible: _c.visible.value,
                        child: Obx(() => Text(
                              _c.formula.value,
                              style: TextStyle(
                                color: currencyCountryColor,
                                fontSize: 10,
                              ),
                            )),
                      )),
                  Row(
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
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class FlagAndValueAnimation extends StatefulWidget {
  String currency = '';
  double value = 0.0;

  FlagAndValueAnimation(this.currency, this.value);

  @override
  _FlagAndValueAnimationState createState() =>
      _FlagAndValueAnimationState(this.currency, this.value);
}

class _FlagAndValueAnimationState extends State<FlagAndValueAnimation> {
  String currency = '';
  double value = 0.0;
  FlagAndValueWdigetController _c;

  _FlagAndValueAnimationState(String currency, double value) {
    this.currency = currency.toUpperCase();
    this.value = value;

    _c = Get.put(FlagAndValueWdigetController(currency), tag: currency);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _c.select(),
      child: Obx(() => Container(
            color: _c.backgroundColor.value,
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Obx(() => Visibility(
                        visible: _c.visible.value,
                        child: Obx(() => Text(
                              _c.formula.value,
                              style: TextStyle(
                                color: currencyCountryColor,
                                fontSize: 10,
                              ),
                            )),
                      )),
                  Row(
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
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

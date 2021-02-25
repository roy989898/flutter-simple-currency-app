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
    return Dismissible(
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.startToEnd) {
          //TODO  change currency

        } else {
          //TODO   currency detail

        }
        return false;
      },
      background: slideRightBackground(),
      secondaryBackground: slideLeftBackground(),
      key: Key(currency),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => _c.select(),
        child: Obx(() => Container(
              color: _c.backgroundColor.value,
              child: Container(
                margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Obx(() => AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          height: _c.visible.value ? 10 : 0,
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
      ),
    );
  }
}

Widget slideRightBackground() {
  return Container(
    color: Colors.green,
    child: Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.import_export,
            color: Colors.white,
          ),
          Text(
            " Change currency",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
      alignment: Alignment.centerLeft,
    ),
  );
}

Widget slideLeftBackground() {
  return Container(
    color: Colors.red,
    child: Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Icon(
            Icons.details,
            color: Colors.white,
          ),
          Text(
            "Currency detail",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      alignment: Alignment.centerRight,
    ),
  );
}

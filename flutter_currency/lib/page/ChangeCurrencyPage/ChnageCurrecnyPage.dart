import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../colors.dart';

class ChangeCurrency extends StatelessWidget {
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
            child: Text('in change currency page: ' + comeFromCurrency)),
      ),
    );
  }
}

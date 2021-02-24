import 'package:flutter/material.dart';
import 'package:flutter_currency/home.dart';
import 'package:get/get.dart';

import 'MainController.dart';
import 'RxStore.dart';
import 'api/ApiManager.dart';
import 'page/CalculatorPage/CalculatorPage.dart';

void main() {
  Get.put(RxStore());
  Get.put(ApiManager());
  Get.put(MainController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CalculatorPage(),
    );
  }
}

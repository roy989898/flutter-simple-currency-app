import 'package:get/get.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../MainController.dart';
import '../../RxStore.dart';
import 'package:flutter/material.dart';

class CurrencyDetailController extends GetxController {
  final MainController mainC = Get.find();
  final RxStore _rxStore = Get.find();

  Rx<LineChartBarData> lineDate = LineChartBarData(
    spots: [FlSpot(0, 0)],
    isCurved: true,
    curveSmoothness: 0,
    colors: const [
      Color(0x444af699),
    ],
    barWidth: 4,
    isStrokeCapRound: true,
    dotData: FlDotData(
      show: false,
    ),
    belowBarData: BarAreaData(
      show: false,
    ),
  ).obs;

  @override
  void onInit() {
    super.onInit();
    //day
    var rxS = _rxStore.rxHistory.map((List<DayHistory> event) {
      List<FlSpot> spots =
          event.sublist(event.length - 5, event.length).map((e) {
        var millisecondsSinceEpoch = e.date.millisecondsSinceEpoch;
        // var d = e.date.microsecond.toDouble();
        return FlSpot(
            e.date.day.toDouble(), e.currencyRatePair['CAD']);
      }).toList();
      if (spots.isEmpty) {
        spots.add(FlSpot(0, 0));
      }
      var l = spots;
      return LineChartBarData(
        spots: [...l],
        isCurved: true,
        curveSmoothness: 0,
        colors: const [
          Color(0x444af699),
        ],
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: false,
        ),
      );
    });
    lineDate.bindStream(rxS);
  }
}

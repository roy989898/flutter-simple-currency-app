import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../MainController.dart';
import '../../RxStore.dart';
import '../../colors.dart';
import 'package:fl_chart/fl_chart.dart';

import 'CurrencyDetailController.dart';

class CurrencyDetailPage extends StatelessWidget {
  final CurrencyDetailController c = Get.find();
  final MainController mainC = Get.find();
  final RxStore _rxStore = Get.find();

  @override
  Widget build(BuildContext context) {
    String comeFromCurrency = Get.arguments;
    _rxStore.rxShowHistoryCurrency.add(comeFromCurrency);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: transparent,
          title: Obx(() => Text(c.title.value)),
        ),
        body: Container(
            color: white,
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Obx(() {
                var b = c.lineDate.value;
                return LineChart(
                  // sampleData1(),
                  // createDataO(linesBarData1()[3]),
                  createDataO(b),
                  swapAnimationDuration: const Duration(milliseconds: 250),
                );
              }),
            )),
      ),
    );
  }

  LineChartData createDataO(LineChartBarData barData) {
    var minX = barData.spots[0].x;
    var maxX = barData.spots[barData.spots.length - 1].x;
    var xDif = maxX - minX;

    List<FlSpot> tempSpots = List.from(barData.spots);
    tempSpots.sort((a, b) {
      if (a.y < b.y) {
        return -1;
      } else if (a.y > b.y) {
        return 1;
      } else {
        return 0;
      }
    });
    var minY = tempSpots[0].y;
    var maxY = tempSpots[tempSpots.length - 1].y;
    var yDif = (maxY - minY) / 10;
    maxY = maxY + yDif * 2;
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
            // tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
            ),
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: true,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff72719b),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          margin: 10,
          getTitles: (double value) {
            //TODO x bar
            /*switch (value.toInt()) {
              case 2:
                return 'SEPT';
              case 7:
                return 'OCT';
              case 12:
                return 'DEC';
            }
            return '';*/
            var date = DateTime.fromMillisecondsSinceEpoch(value.toInt());
            // print(date.year.toString());
            var show = date.day.toString();
            var f = new NumberFormat("###", "en_US");
            return f.format(value);
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff75729e),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          getTitles: (value) {
            //TODO y
            /* switch (value.toInt()) {
              case 1:
                return '1m';
              case 2:
                return '2m';
              case 3:
                return '3m';
              case 4:
                return '5m';
            }
            return '';*/
            // print(value.toString());
            return "";
          },
          margin: 8,
          reservedSize: 30,
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(
            color: Color(0xff4e4965),
            width: 4,
          ),
          left: BorderSide(
            color: Colors.transparent,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      minX: minX,
      maxX: maxX,
      maxY: maxY,
      minY: minY,
      lineBarsData: [barData],
    );
  }
}

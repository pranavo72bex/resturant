import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';

class PicharScreen extends StatelessWidget {
  const PicharScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(sections: data),
    );
  }
}

List<PieChartSectionData> data = [
  PieChartSectionData(color: korange, value: 30),
  PieChartSectionData(color: klime, value: 60),
  PieChartSectionData(color: Kblue, value: 30),
  PieChartSectionData(color: kred, value: 5)
];

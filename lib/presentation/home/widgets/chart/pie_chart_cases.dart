import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_covid/core/utils/utils.dart';
import 'package:flutter_covid/domain/entities/covid_cases.dart';
import 'package:flutter_covid/presentation/home/cubit/home_cubit.dart';

class PieChartCases extends StatelessWidget {
  final CovidCases covidCases;

  const PieChartCases({Key? key, required this.covidCases}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        pieTouchData: PieTouchData(
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
          context
              .read<HomeCubit>()
              .changePieChartTouchedIndex(event, pieTouchResponse);
        }),
        borderData: FlBorderData(
          show: false,
        ),
        sectionsSpace: 0,
        centerSpaceRadius: 40,
        sections: showingSections(context),
      ),
    );
  }

  List<PieChartSectionData> showingSections(BuildContext context) {
    return List.generate(3, (i) {
      final isTouched = i ==
          context.select((HomeCubit value) => value.state.pieChartTouchedIndex);
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: covidCases.confirmed.toDouble(),
            title: formatNumber(covidCases.confirmed.toDouble()),
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: covidCases.deaths.toDouble(),
            title: formatNumber(covidCases.deaths.toDouble()),
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: covidCases.active.toDouble(),
            title: formatNumber(covidCases.active.toDouble()),
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}

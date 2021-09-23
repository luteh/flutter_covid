import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_covid/core/unions/failure.dart';
import 'package:flutter_covid/presentation/home/cubit/home_cubit.dart';
import 'package:flutter_covid/presentation/home/widgets/chart/indicator_list.dart';
import 'package:flutter_covid/presentation/home/widgets/chart/pie_chart_cases.dart';

class ChartSection extends StatelessWidget {
  const ChartSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: context.select(
                (HomeCubit value) => value.state.resultState.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (data) => PieChartCases(
                    covidCases: data,
                  ),
                  error: (failure) => Text(Failure.getErrorMessage(failure)),
                ),
              ),
            ),
          ),
          const IndicatorList(),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }
}

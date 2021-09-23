import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_covid/presentation/home/cubit/home_cubit.dart';
import 'package:flutter_covid/presentation/home/widgets/chart/chart_section.dart';
import 'package:flutter_covid/presentation/home/widgets/footer/footer_section.dart';
import 'package:flutter_covid/presentation/home/widgets/title/title_section.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().fetchCovidCases();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TitleSection(),
            ChartSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}

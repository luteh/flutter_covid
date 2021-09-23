import 'package:bloc/bloc.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_covid/core/unions/result_state.dart';
import 'package:flutter_covid/domain/entities/covid_cases.dart';
import 'package:flutter_covid/domain/usecases/fetch_covid_cases_usecase.dart';
import 'package:flutter_covid/domain/usecases/no_param.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final FetchCovidCasesUseCase _fetchCovidCasesUseCase;
  HomeCubit(this._fetchCovidCasesUseCase) : super(const HomeState());

  fetchCovidCases() async {
    emit(state.copyWith(
      resultState: const ResultState.loading(),
    ));

    final _result = await _fetchCovidCasesUseCase(const NoParam());

    _result.fold(
      (l) => emit(state.copyWith(resultState: ResultState.error(failure: l))),
      (r) => emit(state.copyWith(resultState: ResultState.success(data: r))),
    );
  }

  changePieChartTouchedIndex(
      FlTouchEvent event, PieTouchResponse? pieTouchResponse) {
    if (!event.isInterestedForInteractions ||
        pieTouchResponse == null ||
        pieTouchResponse.touchedSection == null) {
      emit(state.copyWith(pieChartTouchedIndex: -1));
      return;
    }
    emit(state.copyWith(
      pieChartTouchedIndex:
          pieTouchResponse.touchedSection!.touchedSectionIndex,
    ));
  }
}

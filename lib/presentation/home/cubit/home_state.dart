part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(-1) int pieChartTouchedIndex,
    @Default(ResultState.initial()) ResultState<CovidCases> resultState,
  }) = _HomeState;
}

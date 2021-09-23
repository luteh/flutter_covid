import 'package:flutter_covid/domain/entities/covid_cases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'covid_cases_response.freezed.dart';
part 'covid_cases_response.g.dart';

@freezed
class CovidCasesResponse with _$CovidCasesResponse {
  const CovidCasesResponse._();

  const factory CovidCasesResponse({
    required String countryRegion,
    required int lastUpdate,
    required double lat,
    required double long,
    required int confirmed,
    required int deaths,
    required int active,
    required String combinedKey,
    required double incidentRate,
    required int uid,
    required String iso3,
    required int cases28Days,
    required int deaths28Days,
  }) = _CovidCasesResponse;

  factory CovidCasesResponse.fromJson(Map<String, dynamic> json) =>
      _$CovidCasesResponseFromJson(json);

  CovidCases toDomain() => CovidCases(
        countryRegion: countryRegion,
        lastUpdate: lastUpdate,
        lat: lat,
        long: long,
        confirmed: confirmed,
        deaths: deaths,
        active: active,
        combinedKey: combinedKey,
        incidentRate: incidentRate,
        uid: uid,
        iso3: iso3,
        cases28Days: cases28Days,
        deaths28Days: deaths28Days,
      );
}

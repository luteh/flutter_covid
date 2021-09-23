import 'package:flutter_covid/data/remote/api/api_service.dart';
import 'package:flutter_covid/data/remote/responses/covid_cases_response.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RemoteDataSource {
  final ApiService _apiService;

  RemoteDataSource(this._apiService);

  Future<CovidCasesResponse> fetchCovidCases() async {
    final _response = await _apiService.fetchCovidCases();

    return (_response.data as List<dynamic>)
        .map((e) => CovidCasesResponse.fromJson(e))
        .first;
  }
}

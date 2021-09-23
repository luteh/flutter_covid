import 'package:dio/dio.dart';
import 'package:flutter_covid/data/remote/api/endpoint.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Response> fetchCovidCases() async {
    return await _dio.get(
      Endpoint.covidCases,
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:flutter_covid/core/unions/failure.dart';
import 'package:flutter_covid/domain/entities/covid_cases.dart';

abstract class MyRepository {
  Future<Either<Failure, CovidCases>> fetchCovidCases();
}

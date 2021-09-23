import 'package:dartz/dartz.dart';
import 'package:flutter_covid/core/unions/failure.dart';
import 'package:flutter_covid/domain/entities/covid_cases.dart';
import 'package:flutter_covid/domain/repositories/my_repository.dart';
import 'package:flutter_covid/domain/usecases/no_param.dart';
import 'package:injectable/injectable.dart';

import 'future_usecase.dart';

@lazySingleton
class FetchCovidCasesUseCase extends FutureUseCase<CovidCases, NoParam> {
  final MyRepository myRepository;

  FetchCovidCasesUseCase({required this.myRepository});

  @override
  Future<Either<Failure, CovidCases>> execute(NoParam params) {
    return myRepository.fetchCovidCases();
  }
}

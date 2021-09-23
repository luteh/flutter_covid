import 'package:flutter_covid/data/local/local_data_source.dart';
import 'package:flutter_covid/data/remote/remote_data_source.dart';
import 'package:flutter_covid/domain/entities/covid_cases.dart';
import 'package:flutter_covid/core/unions/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_covid/domain/repositories/my_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MyRepository)
class MyRepositoryImpl implements MyRepository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  MyRepositoryImpl(this._remoteDataSource, this._localDataSource);
  @override
  Future<Either<Failure, CovidCases>> fetchCovidCases() async {
    final _data = await _remoteDataSource.fetchCovidCases();
    return Right(_data.toDomain());
  }
}

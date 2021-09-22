import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../core/unions/failure.dart';

abstract class FutureUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params) async {
    try {
      return await execute(params);
    } catch (e) {
      if (e is TypeError) {
        log(
          e.toString(),
          stackTrace: e.stackTrace,
        );
      }
      return Left(Failure.getException(e));
    }
  }

  Future<Either<Failure, Type>> execute(Params params);
}

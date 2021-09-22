import 'package:flutter_covid/domain/repositories/my_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MyRepository)
class MyRepositoryImpl implements MyRepository {}

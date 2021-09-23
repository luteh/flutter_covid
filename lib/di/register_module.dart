import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  // You can register named preemptive types like follows
  @Named("BaseUrl")
  String get baseUrl => 'https://covid19.mathdro.id/api';

  // url here will be injected
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(
        baseUrl: url,
      ))
        ..interceptors.add(
          LogInterceptor(responseBody: true, requestBody: true),
        );
}

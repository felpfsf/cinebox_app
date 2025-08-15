import 'package:cinebox_app/config/env.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tmdb_provider.g.dart';

@Riverpod(keepAlive: true)
Dio tmdbClient() {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    ),
  );

  dio.options.headers['Content-Type'] = 'application/json';
  dio.options.headers['Authorization'] = 'Bearer ${Env.tmdbApiKey}';
  dio.interceptors.addAll([
    LogInterceptor(
      responseBody: true,
    ),
  ]);

  return dio;
}

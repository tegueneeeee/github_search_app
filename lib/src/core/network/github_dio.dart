import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github_dio.g.dart';

@Riverpod(keepAlive: true)
GithubDio githubDio(GithubDioRef ref) {
  return GithubDio._();
}

class GithubDio with DioMixin implements Dio {
  GithubDio._() {
    const baseUrl = 'https://api.github.com';
    options = BaseOptions(
      baseUrl: baseUrl,
      contentType: 'application/json',
      connectTimeout: const Duration(milliseconds: 30000),
      sendTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(milliseconds: 30000),
    );
    interceptors.addAll([
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers['Accept'] = 'application/vnd.github+json';
          options.headers['X-GitHub-Api-Version'] = '2022-11-28';
          options.headers['User-Agent'] = 'request';
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException e, handler) async {
          return handler.next(e);
        },
      ),
    ]);
    httpClientAdapter = IOHttpClientAdapter();
  }
}

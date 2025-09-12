import 'package:dio/dio.dart';

class ClientHttp {
  final Dio _dio = Dio();

  ClientHttp() {
    _configureDio();
  }

  void _configureDio() {
    _dio.options.baseUrl = String.fromEnvironment('API_BASE_URL');
    _dio.options.connectTimeout = Duration(
      seconds: int.fromEnvironment('API_CONNECT_TIMEOUT'),
    );
    _dio.options.receiveTimeout = Duration(
      seconds: int.fromEnvironment('API_RECEIVE_TIMEOUT'),
    );
    _dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) {
          final skipAuth =
              options.extra['skipAuth'] == true ||
              options.path.endsWith('/auth/google/token');

          if (!skipAuth) {
            //final token = await authStorage.getAccessToken();
            //if (token != null && token.isNotEmpty) {
            //options.headers['Authorization'] = 'Bearer $token';
            //}
          }

          handler.next(options);
        },
      ),
    );
  }
}

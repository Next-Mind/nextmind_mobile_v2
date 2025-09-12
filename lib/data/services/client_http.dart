import 'package:dio/dio.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_local_storage.dart';
import 'package:result_dart/result_dart.dart';

class ClientHttp {
  final Dio _dio = Dio();
  final AuthLocalStorage _authLocalStorage;

  ClientHttp(this._authLocalStorage) {
    _configureDio();
  }

  AsyncResult<Response> get(String path) async {
    try{
      final response = await _dio.get(path);
      return Success(response);
    } on DioException catch(e){
      return Failure(e);
    }
  }

  AsyncResult<Response> post(String path,dynamic data) async {
    try{
      final response = await _dio.post(path, data: data);
      return Success(response);
    } on DioException catch(e){
      return Failure(e);
    }
  }

  AsyncResult<Response> put(String path,dynamic data) async {
    try{
      final response = await _dio.put(path, data: data);
      return Success(response);
    } on DioException catch(e){
      return Failure(e);
    }
  }

  AsyncResult<Response> patch(String path,dynamic data) async {
    try{
      final response = await _dio.patch(path, data: data);
      return Success(response);
    } on DioException catch(e){
      return Failure(e);
    }
  }

  AsyncResult<Response> delete(String path,dynamic data) async {
    try{
      final response = await _dio.delete(path, data: data);
      return Success(response);
    } on DioException catch(e){
      return Failure(e);
    }
  }


  void _configureDio() async {
    _dio.options.baseUrl = String.fromEnvironment('API_BASE_URL');
    _dio.options.connectTimeout = Duration(
      seconds: int.fromEnvironment('API_CONNECT_TIMEOUT'),
    );
    _dio.options.receiveTimeout = Duration(
      seconds: int.fromEnvironment('API_RECEIVE_TIMEOUT'),
    );
    _dio.options.headers['Content-Type'] = 'application/json';
    _dio.options.headers['X-Client'] = 'mobile';

    _dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          final skipAuth =
              options.extra['skipAuth'] == true ||
              options.path.endsWith('/auth/google/token');

          if (!skipAuth) {
            final token = await _authLocalStorage.getUserAccessToken();
            options.headers['Authorization'] = 'Bearer $token';
          }

          handler.next(options);
        },
      ),
    );
  }
}

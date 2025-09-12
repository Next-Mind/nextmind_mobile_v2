import 'package:dio/dio.dart';

class ClientHttp {

  final Dio _dio = Dio();

  ClientHttp(){
    _configureDio();
  }

  void _configureDio(){
    _dio.options.baseUrl = 
  }
}
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    @required String? url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'lang': lang,
      'Authorization': token,
      'Content-Type': 'application/json',
    };

    return await dio.get(
      url!,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    @required String? url,
    @required Map<String, dynamic>? data,
  }) async {
    return await dio.post(
      url!,
      data: data,
    );
  }
}

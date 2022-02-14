import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      receiveDataWhenStatusError: true,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ));
  }

  static Future<Response> getData({
    @required String? url,
  }) async {
    return await dio.get(
      url!,
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

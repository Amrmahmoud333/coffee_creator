import 'package:coffee_creator/data/models/auth_model/auth_model.dart';

import 'dio_helper.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthAPI {
  String api_key = dotenv.env['WEB_API_KEY'].toString();

  Future<dynamic> postSignupAPI(String email, String password) async {
    final response = DioHelper.postData(
      url:
          'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$api_key',
      data: {
        'email': email,
        'password': password,
        'returnSecureToken': true,
      },
    );
    return response;
  }

  Future<dynamic> postUserDataAPI(
      UserData userData, String userId, String authToken) async {
    DioHelper.postData(
      url:
          'https://coffee-creator-default-rtdb.firebaseio.com/users/$userId.json?auth=$authToken',
      data: {
        'id': userId,
        'fname': userData.fname,
        'lname': userData.lname,
        'email': userData.email,
        'phone': userData.phone,
        'image': userData.image,
      },
    );
  }

  Future<dynamic> postLoginAPI(String email, String password) async {
    final response = DioHelper.postData(
      url:
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$api_key',
      data: {
        'email': email,
        'password': password,
        'returnSecureToken': true,
      },
    );
    return response;
  }
}

import 'dio_helper.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthAPI {
  String api_key = dotenv.env['WEB_API_KEY'].toString();
  Future<dynamic> postSignup(String email, String password) async {
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

  Future<void> login(String email, String password) async {
    //return _authenticate(email, password, 'signInWithPassword');
  }
}


import 'dio_helper.dart';

class AuthAPI {
  Future<dynamic> postSignup(String email, String password) async {
    final response = DioHelper.postData(
      url:
          'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBok08BA_TQTYv1KArUI5rWQ2tvrdGCqq8',
      data: {
        'email': email,
        'password': password,
        'returnSecureToken':true,
      },
    );
    return response;
  }

  Future<void> login(String email, String password) async {
    //return _authenticate(email, password, 'signInWithPassword');
  }
}

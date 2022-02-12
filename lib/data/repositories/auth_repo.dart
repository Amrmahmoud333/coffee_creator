import 'package:coffee_creator/data/data_API/auth_API.dart';
import 'package:coffee_creator/data/models/auth_model/auth_model.dart';

class AuthRepo {
  late AuthAPI _authAPI = AuthAPI();
  static late AuthResponseModel authResponseModel;

  Future<void> signUpRepo(String email, String password) async {
    await _authAPI.postSignupAPI(email, password).then((response) {
      authResponseModel = AuthResponseModel.fromJson(response.data);
    });
  }

  Future<void> setUserDataRepo(
      UserData userData, String userId, String authToken) async {
    await _authAPI.postUserDataAPI(userData, userId, authToken);
  }

  Future<void> loginRepo(String email, String password) async {
    await _authAPI.postLoginAPI(email, password).then((response) {
      authResponseModel = AuthResponseModel.fromJson(response.data);
    });
  }
}

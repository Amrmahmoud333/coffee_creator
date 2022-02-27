import 'package:coffee_creator/data/models/auth_model/auth_model.dart';
import 'package:coffee_creator/data/repositories/auth_repo.dart';

import 'dio_helper.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthAPI extends AuthRepo {
  String api_key = dotenv.env['WEB_API_KEY'].toString();

  @override
  Future<AuthResponseModel> loginRepo(AuthRequestModel authRequestModel) async {
    final response = await DioHelper.postData(
      url:
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$api_key',
      data: authRequestModel.toMap(),
    );
    return AuthResponseModel.fromMap(response.data);
  }

  @override
  Future<AuthResponseModel> signUpRepo(
      AuthRequestModel authRequestModel) async {
    final response = await DioHelper.postData(
      url:
          'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$api_key',
      data: authRequestModel.toMap(),
    );
    return AuthResponseModel.fromMap(response.data);
  }

  @override
  Future<void> setUserDataRepo(
      UserData userData, String userId, String authToken) async {
    await DioHelper.postData(
      url:
          'https://coffee-creator-default-rtdb.firebaseio.com/users/$userId.json?auth=$authToken',
      data: userData.toMap(),
    );
  }
}

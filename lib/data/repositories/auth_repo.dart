import 'package:coffee_creator/data/models/auth_model/auth_model.dart';

abstract class AuthRepo {
  Future<AuthResponseModel> signUpRepo(AuthRequestModel authRequestModel);

  Future<void> setUserDataRepo(UserData userData, String userId, String authToken);

  Future<AuthResponseModel> loginRepo(AuthRequestModel authRequestModel);
}

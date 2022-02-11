import 'package:coffee_creator/data/data_providers/auth_API.dart';
import 'package:coffee_creator/data/models/auth_model/sign_up_model.dart';

class AuthRepo {
  late AuthAPI _authAPI = AuthAPI();
  late SignUpResponseModel signUpResponseModel;

  Future<void> signUpRepo(String email, String password) async {
    await _authAPI
        .postSignup(email, password)
        .then((resoonse) {
      signUpResponseModel = SignUpResponseModel.fromJson(resoonse.data);
    });
  }
}

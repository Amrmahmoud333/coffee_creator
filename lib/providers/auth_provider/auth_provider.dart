import 'package:coffee_creator/data/repositories/auth_repo.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  AuthRepo _authRepo = AuthRepo();

  Future<void> signUp(
      String email, String password) async {
    try {
    await _authRepo.signUpRepo(email,password);
      notifyListeners();
      print(_authRepo.signUpResponseModel.token);
    } catch (error) {
      print(error.toString());
      throw error;
    }
  }
}

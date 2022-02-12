import 'package:coffee_creator/data/models/auth_model/auth_model.dart';
import 'package:coffee_creator/data/repositories/auth_repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  AuthRepo _authRepo = AuthRepo();
  late String errorMessage;

  Future<void> signUp(String email, String password) async {
    try {
      await _authRepo.signUpRepo(email, password);
      print(AuthRepo.authResponseModel.token);
    } catch (error) {
      print(error.toString());
      throw error;
    }
  }

  Future<void> setUserData(UserData userData) async {
    try {
      await _authRepo.setUserDataRepo(
          userData,
          AuthRepo.authResponseModel.userID!,
          AuthRepo.authResponseModel.token!);
    } catch (erorr) {
      print(erorr.toString());
      throw erorr;
    }
  }

  Future<String> login(String email, String password) async {
    late String errorMessage;
    try {
      await _authRepo.loginRepo(email, password);
      errorMessage = 'succeeded';
      //  print(_authRepo.authResponseModel.token);
    } on DioError catch (error) {
      if (error.message.toString().contains('EMAIL_EXISTS')) {
        errorMessage = 'This email address is already in use.';
      } else if (error.message.toString().contains('INVALID_EMAIL')) {
        errorMessage = 'This is not a valid email address';
      } else if (error.message.toString().contains('WEAK_PASSWORD')) {
        errorMessage = 'This password is too weak.';
      } else if (error.message.toString().contains('EMAIL_NOT_FOUND')) {
        errorMessage = 'Could not find a user with that email.';
      } else if (error.message.toString().contains('INVALID_PASSWORD')) {
        errorMessage = 'Invalid password.';
      } else
        errorMessage = 'Could not find a user with that email.';
    }
    return errorMessage;
  }
}

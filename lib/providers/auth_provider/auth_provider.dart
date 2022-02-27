import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:coffee_creator/constants/auth_const.dart';
import 'package:coffee_creator/data/models/auth_model/auth_model.dart';
import 'package:coffee_creator/data/repositories/auth_repo.dart';

class AuthProvider with ChangeNotifier {
  AuthRepo authRepo;
  late AuthResponseModel _authResponseModel;
  late String errorMessage;
  
  AuthProvider({
    required this.authRepo,
  });

  Future<void> signUp(AuthRequestModel authRequestModel) async {
    try {
      _authResponseModel = await authRepo.signUpRepo(authRequestModel);
      token = _authResponseModel.token;
      userId = _authResponseModel.userID;
      print(token);
    } catch (error) {
      print(error.toString());
      throw error;
    }
  }

  Future<void> setUserData(UserData userData) async {
    try {
      await authRepo.setUserDataRepo(
        userData,
        _authResponseModel.userID,
        _authResponseModel.token,
      );
    } catch (error) {
      print(error.toString());
      throw error;
    }
  }

  Future<String> login(AuthRequestModel authRequestModel) async {
    late String errorMessage;
    try {
      _authResponseModel = await authRepo.loginRepo(authRequestModel);
      token = _authResponseModel.token;
      userId = _authResponseModel.userID;
      errorMessage = 'succeeded';
      //print(_authResponseModel.token);
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

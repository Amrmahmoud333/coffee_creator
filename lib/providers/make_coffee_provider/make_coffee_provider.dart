import 'package:coffee_creator/data/data_API/make_coffee_API.dart';
import 'package:coffee_creator/data/models/make_your_coffee_model/make_coffee_model.dart';
import 'package:coffee_creator/data/repositories/auth_repo.dart';
import 'package:flutter/widgets.dart';

class MakeCoffeeProvider extends ChangeNotifier {
  MakeCoffeeAPI makeCoffeeAPI = MakeCoffeeAPI();
  String token = AuthRepo.authResponseModel.token.toString();
  String userId = AuthRepo.authResponseModel.userID.toString();
  Future<void> makeCoffee({MakeCoffeeModel? makeCoffeeModel}) async {
    try {
      await makeCoffeeAPI.postCoffeeData(userId, token, makeCoffeeModel!);
    } catch (e) {
      print(e.toString());
    }
  }
}

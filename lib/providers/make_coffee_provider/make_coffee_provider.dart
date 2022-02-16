import 'package:coffee_creator/constants/auth_const.dart';
import 'package:coffee_creator/data/data_API/make_coffee_API.dart';
import 'package:coffee_creator/data/models/make_your_coffee_model/make_coffee_model.dart';
import 'package:coffee_creator/data/repositories/CoffeeDetailsRepo.dart';
import 'package:flutter/widgets.dart';

class MakeCoffeeProvider extends ChangeNotifier {
  late MakeCoffeeAPI _makeCoffeeAPI;
  CoffeeDetailsRepo coffeeDetailsRepo = CoffeeDetailsRepo();

  var res;

  Future<void> makeCoffee({MakeCoffeeModel? makeCoffeeModel}) async {
    try {
      await _makeCoffeeAPI.postCoffeeData(userId!, token!, makeCoffeeModel!);
    } catch (e) {
      print(e.toString() + ' error from MakeCoffeeProvider');
    }
  }

  Future<MakeCoffeeModel> coffeeDetails() async {
    try {
      res = await coffeeDetailsRepo.coffeeDetailsRepo(userId!, token!);
    } catch (e) {
      print(e.toString() + ' error from MakeCoffeeProvider');
    }
    print('From MakeCoffeeProvider ${res.extra}');
    return res;
  }
}

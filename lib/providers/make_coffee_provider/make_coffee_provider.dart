import 'package:coffee_creator/constants/auth_const.dart';
import 'package:coffee_creator/data/models/make_your_coffee_model/make_coffee_model.dart';
import 'package:coffee_creator/data/repositories/CoffeeDetailsRepo.dart';
import 'package:flutter/widgets.dart';

class MakeCoffeeProvider extends ChangeNotifier {
  late CoffeeDetailsRepo _coffeeDetailsRepo;

  var res;

  Future<void> makeCoffee({MakeCoffeeModel? makeCoffeeModel}) async {
    _coffeeDetailsRepo = CoffeeDetailsRepo();
    try {
      await _coffeeDetailsRepo.sendCoffeeDataRepo(makeCoffeeModel!);
    } catch (e) {
      print(e.toString() + ' error from MakeCoffeeProvider');
    }
  }

  Future<MakeCoffeeModel> coffeeDetails() async {
    _coffeeDetailsRepo = CoffeeDetailsRepo();
    try {
      res = await _coffeeDetailsRepo.coffeeDetailsRepo(userId!, token!);
    } catch (e) {
      print(e.toString() + ' error from MakeCoffeeProvider');
    }
    print('From MakeCoffeeProvider ${res.extra}');
    return res;
  }
}

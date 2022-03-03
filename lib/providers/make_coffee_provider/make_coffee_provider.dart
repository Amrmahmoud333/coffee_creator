import 'package:coffee_creator/constants/auth_const.dart';
import 'package:coffee_creator/data/models/make_your_coffee_model/make_coffee_model.dart';
import 'package:coffee_creator/data/repositories/CoffeeDetailsRepo.dart';
import 'package:flutter/widgets.dart';

class MakeCoffeeProvider with ChangeNotifier {
  CoffeeDetailsRepo coffeeDetailsRepo;
  late MakeCoffeeModel _makeCoffeeModel;
  var res;
  MakeCoffeeProvider({
    required this.coffeeDetailsRepo,
  });

  Future<void> makeCoffee({MakeCoffeeModel? makeCoffeeModel}) async {
    try {
      await coffeeDetailsRepo.postCoffeeData(userId!, token!, makeCoffeeModel!);
    } catch (e) {
      print(e.toString() + ' error from MakeCoffeeProvider');
    }
  }

  Future<MakeCoffeeModel> coffeeDetails() async {
    try {
      res = await coffeeDetailsRepo.getCoffeeDetails(userId!, token!);
    } catch (e) {
      print(e.toString() + ' error from MakeCoffeeProvider');
    }
    //print('From MakeCoffeeProvider ${res.extra}');
    return res;
  }
}

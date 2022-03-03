import 'package:coffee_creator/constants/auth_const.dart';
import 'package:coffee_creator/data/data_API/make_coffee_API.dart';
import 'package:coffee_creator/data/models/make_your_coffee_model/make_coffee_model.dart';

abstract class CoffeeDetailsRepo {
  Future<MakeCoffeeModel> getCoffeeDetails(String userId, String authToken);

  Future<dynamic> postCoffeeData(
      String userId, String authToken, MakeCoffeeModel makeCoffeeModel);
}

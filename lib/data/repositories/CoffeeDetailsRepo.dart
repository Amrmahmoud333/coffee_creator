import 'package:coffee_creator/constants/auth_const.dart';
import 'package:coffee_creator/data/data_API/make_coffee_API.dart';
import 'package:coffee_creator/data/models/make_your_coffee_model/make_coffee_model.dart';

class CoffeeDetailsRepo {
  late MakeCoffeeAPI _makeCoffeeAPI;

  Future<MakeCoffeeModel> coffeeDetailsRepo(
      String userId, String authToken) async {
    _makeCoffeeAPI = MakeCoffeeAPI();
    return await _makeCoffeeAPI
        .getCoffeeData(userId, authToken)
        .then((response) {
      return MakeCoffeeModel.fromJson(response.data['-MvjTBxf5NUxEQw539Y8']);
    });
  }

  Future<void> sendCoffeeDataRepo(MakeCoffeeModel makeCoffeeModel) async {
    _makeCoffeeAPI = MakeCoffeeAPI();
    return await _makeCoffeeAPI.postCoffeeData(
      userId!,
      token!,
      makeCoffeeModel.toJson(),
    );
  }
}

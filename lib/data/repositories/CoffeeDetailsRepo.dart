import 'package:coffee_creator/data/data_API/make_coffee_API.dart';
import 'package:coffee_creator/models/make_your_coffee_model/make_coffee_model.dart';

class CoffeeDetailsRepo {
  late MakeCoffeeAPI _makeCoffeeAPI = MakeCoffeeAPI();
  static late MakeCoffeeModel makeCoffeeModel;

  Future<MakeCoffeeModel> cofeeDetailsRepo(
      String userId, String authToken) async {
    return await _makeCoffeeAPI
        .getCoffeeData(userId, authToken)
        .then((response) {
      return makeCoffeeModel = MakeCoffeeModel.fromJson(response.data);
    });
  }
}

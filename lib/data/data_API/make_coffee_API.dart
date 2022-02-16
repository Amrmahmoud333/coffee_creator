import 'package:coffee_creator/data/models/make_your_coffee_model/make_coffee_model.dart';

import 'dio_helper.dart';

class MakeCoffeeAPI {
  
  Future<dynamic> getCoffeeData(
    String userId,
    String authToken,
  ) async {
    final response = DioHelper.getData(
      url:
          'https://coffee-creator-default-rtdb.firebaseio.com/make_coffee/$userId.json?auth=$authToken',
    );
    //print('from MakeCoffeeAPI $response');
    return response;
  }

  Future<dynamic> postCoffeeData(
    String userId,
    String authToken,
    MakeCoffeeModel makeCoffeeModel,
  ) async {
    //TODO get list of make your coffee and make Repo class
    final response = await DioHelper.postData(
      url:
          'https://coffee-creator-default-rtdb.firebaseio.com/make_coffee/$userId.json?auth=$authToken',
      data: {
        'cupSize': makeCoffeeModel.cupSize,
        'coffeeType': makeCoffeeModel.coffeeType,
        'origin': makeCoffeeModel.origin,
        'roast': makeCoffeeModel.roast,
        'sugarType': makeCoffeeModel.sugarType,
        'sugarAmount': makeCoffeeModel.sugarAmount,
        'flavor': makeCoffeeModel.flavor,
        'extra': makeCoffeeModel.extra,
      },
    );
    //print(response.data.toString());
    return response;
  }
}

import 'package:coffee_creator/data/models/make_your_coffee_model/make_coffee_model.dart';
import 'package:coffee_creator/data/repositories/CoffeeDetailsRepo.dart';

import 'dio_helper.dart';

class MakeCoffeeAPI extends CoffeeDetailsRepo {
  @override
  Future<MakeCoffeeModel> getCoffeeDetails(
      String userId, String authToken) async {
    final response = await DioHelper.getData(
      url:
          'https://coffee-creator-default-rtdb.firebaseio.com/make_coffee/$userId.json?auth=$authToken',
    );
    return MakeCoffeeModel.fromJson(response.data['-MxFKrpnVwvzik37eAur']);
  }

/*async {
    _makeCoffeeAPI = MakeCoffeeAPI();
    return await _makeCoffeeAPI
        .getCoffeeData(userId, authToken)
        .then((response) {
      return MakeCoffeeModel.fromJson(response.data['-MvjTBxf5NUxEQw539Y8']);
    });
  }*/
  @override
  Future<dynamic> postCoffeeData(
      String userId, String authToken, MakeCoffeeModel makeCoffeeModel) async {
    final response = await DioHelper.postData(
        url:
            'https://coffee-creator-default-rtdb.firebaseio.com/make_coffee/$userId.json?auth=$authToken',
        data: makeCoffeeModel.toJson());
    return response;
  }
/*async {
    _makeCoffeeAPI = MakeCoffeeAPI();
    return await _makeCoffeeAPI.postCoffeeData(
      userId!,
      token!,
      makeCoffeeModel.toJson(),
    );
  }*/

}

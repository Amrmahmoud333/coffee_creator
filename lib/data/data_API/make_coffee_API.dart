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
    Map<String,dynamic> data,
  ) async {
    //TODO get list of make your coffee
    final response = await DioHelper.postData(
      url:
          'https://coffee-creator-default-rtdb.firebaseio.com/make_coffee/$userId.json?auth=$authToken',
      data: data,
    );
    //print(response.data.toString());
    return response;
  }
}

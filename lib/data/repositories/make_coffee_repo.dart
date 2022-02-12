import 'package:coffee_creator/data/data_API/make_coffee_API.dart';
import 'package:coffee_creator/data/models/make_your_coffee_model/make_coffee_model.dart';
import 'package:dio/dio.dart';

class MakeCoffeeRepo {
  late MakeCoffeeAPI makeCoffeeAPI = MakeCoffeeAPI();
  late MakeCoffeeModel makeCoffeeModel;
}

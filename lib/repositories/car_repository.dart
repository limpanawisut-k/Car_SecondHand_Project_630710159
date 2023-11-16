import 'dart:convert';



import 'package:project_final/models/car.dart';

import '../services/api_caller.dart';

class CarRepository {
  Future<List<Car>> getCars() async {
    try {
      var result = await ApiCaller().get('car?_embed=');
      List list = jsonDecode(result);
      List<Car> carList = list.map<Car>((item) => Car.fromJson(item)).toList();
      return carList;
    } catch (e) {
      // TODO:
      rethrow;
    }
  }
}

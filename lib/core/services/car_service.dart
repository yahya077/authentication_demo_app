import 'dart:convert';

import 'package:authenticationdemoapp/core/models/car_make.dart';
import 'package:authenticationdemoapp/services/base_api.dart';
import 'package:dio/dio.dart';

class CarService extends BaseApi {
  List<CarMake> _carMakes = List();
  getCarMake() async{
    var response = await getMakes();
    if(response.statusCode == 200){
      var data = jsonDecode(response.toString());
      data.forEach((carMakes) {
        _carMakes.add(CarMake.fromJson(carMakes));
      });
      return _carMakes;
    }
  }


  Future<Response> getMakes() async {
    return await api.httpGet('car-makes');
  }






}
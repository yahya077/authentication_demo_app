import 'package:dio/dio.dart';

import 'base_api.dart';

class CarService extends BaseApi {

  Future<Response> getCarMakes() async {
    return await api.httpGet('car-makes');
  }
}
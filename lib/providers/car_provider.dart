import 'dart:convert';

import 'package:authenticationdemoapp/models/car_make.dart';
import 'package:authenticationdemoapp/services/car_service.dart';


import 'base_provider.dart';

class CarProvider extends BaseProvider {
  CarService _carService = CarService();

  List<CarMake> _carMakes = List();
  List<CarMake> get carMakes => _carMakes;

  bool _busy = false;

  bool get busy => _busy;

  setBusy(bool val) {
    _busy = val;
    notifyListeners();
  }

  Future<List<CarMake>> getCarMakes() async{
    setBusy(true);
    print("00");
      var response = await _carService.getCarMakes();
      if(response.statusCode == 200) {
        var data = jsonDecode(response.toString());
        data.forEach((carMakes) {
          _carMakes.add(CarMake.fromJson(carMakes));
        });
        notifyListeners();
        setBusy(true);
      }else if(response.statusCode == 404){
        setMessage(response.toString());
      }
      return _carMakes;
  }

}
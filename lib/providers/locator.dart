import 'package:authenticationdemoapp/providers/auth_provider.dart';
import 'package:authenticationdemoapp/providers/car_provider.dart';
import 'package:get_it/get_it.dart';

GetIt locator =GetIt.instance;

void setupLocator(){
  locator.registerFactory(() => AuthProvider());
  locator.registerLazySingleton(() => CarProvider());
}
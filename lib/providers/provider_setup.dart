import 'package:authenticationdemoapp/providers/car_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'auth_provider.dart';
import 'locator.dart';


List<SingleChildWidget> providers =[
  ChangeNotifierProvider(
    create: (context) => locator<AuthProvider>(),
  ),
  ChangeNotifierProvider(
    create: (context) => locator<CarProvider>(),
  ),
];

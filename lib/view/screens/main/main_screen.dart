import 'package:authenticationdemoapp/core/models/car_make.dart';
import 'package:authenticationdemoapp/core/services/car_service.dart';
import 'package:authenticationdemoapp/providers/auth_provider.dart';
import 'package:authenticationdemoapp/view/screens/authentication/login_screen.dart';
import 'package:authenticationdemoapp/view/widgets/brands_slider.dart';
import 'package:authenticationdemoapp/view/widgets/featured.dart';
import 'package:authenticationdemoapp/view/widgets/main_categories_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  MainScreen({this.onPressed});
  final Function() onPressed;
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  /*CarService _carService = CarService();
  List<CarMake> makes;*/

  @override
  void initState() {
    super.initState();
    //_getAllMakes();
  }

/*  _getAllMakes() async{
    var make = await _carService.getCarMake();
    setState(() {
      makes = make;
    });
  }*/


  @override
  Widget build(BuildContext context) {

    return /*makes == null ? Center(child: CircularProgressIndicator(),) :*/ Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Hola"),
        leading: InkWell(
          onTap: widget.onPressed,
            /*onTap: () async{
              var logout = await Provider.of<AuthProvider>(context,listen: false).logout();
              if(logout){
                Navigator.of(context).pushNamedAndRemoveUntil(
                    LoginScreen.routeName, (Route<dynamic> route) => false
                );
              }
            }*/
            child: Icon(Icons.clear)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            BrandsSlider(/*makes*/),
            SizedBox(
              height: 10,
            ),
            MainCategoriesBar(),
            SizedBox(
              height: 10,
            ),
            Featured(),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

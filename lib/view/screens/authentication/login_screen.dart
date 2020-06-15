import 'package:authenticationdemoapp/providers/auth_provider.dart';
import 'package:authenticationdemoapp/utils/commons.dart';
import 'package:authenticationdemoapp/view/home_page.dart';
import 'package:authenticationdemoapp/view/screens/authentication/register_screen.dart';
import 'package:authenticationdemoapp/view/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:progress_button/progress_button.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static final routeName = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  AuthProvider provider = AuthProvider();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String get _email => _emailController.text.trim();
  String get _password => _passwordController.text.trim();

  @override
  void initState() {
    super.initState();
/*    WidgetsBinding.instance.addPostFrameCallback((_) async{
      provider = Provider.of<AuthProvider>(context,listen: false);
      var userExist =await provider.getUser();
      if(userExist){
        Navigator.of(context).pushReplacementNamed(HomePage.routeName);
      }
    });*/
   // Navigator.of(context).pushReplacementNamed(HomePage.routeName);
  }

  onSubmit() async{
    Navigator.of(context).pushReplacementNamed(HomePage.routeName);
/*    if(_email == "" || _password == ""){
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text("Empty field"),
      ));
      return;
    }else if (!isEmail(_email)) {
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text("Invalid email format"),
      ));
      return;
    }else if (_password.length < 6 || _email.length < 6){
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text("Less than 6 characters"),
      ));
      return;
    }
    var login = await Provider.of<AuthProvider>(context,listen: false).login(_email, _password);
    print(login.toString()+"loggg");
    if (login){
      Navigator.of(context).pushReplacementNamed(HomePage.routeName);
    }else {
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(provider.message),
      ));
    }*/
  }

  static bool isEmail(String em) {
    String p =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = new RegExp(p);
    return regExp.hasMatch(em);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 26),
            alignment: Alignment.center,
            child: Text('Walken', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Text("Login", style: TextStyle(fontSize: 35,fontWeight: FontWeight.w900),),
                SizedBox(height: 25,),
                TextFormField(
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder( borderSide: new BorderSide(color: Colors.black)),
                    labelText: "Enter your e-mail",
                    labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                    prefixIcon: Icon(Icons.alternate_email,color: Colors.black,),
                  ),
                  controller: _emailController,
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder( borderSide: new BorderSide(color: Colors.black)),
                    labelText: "Enter your password",
                    labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                    prefixIcon: Icon(Icons.lock,color: Colors.black,),
                  ),
                  obscureText: true,
                  controller: _passwordController,
                ),
                SizedBox(height: 45,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: ProgressButton(
                    child: Text('Continue',style: TextStyle(color: Colors.white),),
                    onPressed: () => onSubmit(),
                    buttonState: ButtonState.normal,
                    backgroundColor: Colors.black,
                    progressColor: Colors.black,
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Forget your password?", style: TextStyle(color: Colors.grey.shade600),),
                    SizedBox(width: 10,),
                    Text("Reset Password", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                  ],
                )
              ],
            ),
          ),
          Container(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Don't have an account?", style: TextStyle(color: Colors.grey.shade400),),
            SizedBox(width: 5,),
            InkWell(
                onTap: () => Navigator.of(context).pushReplacementNamed(RegisterScreen.routeName),
                child: Text('SignUp', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),
          ],
        ),
      ),
    );
  }
}
import 'dart:convert';

import 'package:authenticationdemoapp/models/user_modal.dart';
import 'package:authenticationdemoapp/services/api.dart';
import 'package:authenticationdemoapp/services/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'base_provider.dart';

class AuthProvider extends BaseProvider {
    AuthService _authService = AuthService();
    Api _api = Api();
    UserModal _user = UserModal();

    UserModal get user => _user;

    setUser(UserModal user){
      _user = user;
    }


    Future<bool> getUser() async{
      setBusy(true);
      bool tokenExist = await getToken();
      if(tokenExist){
        var response = await _authService.getUser();
        if(response.statusCode == 200) {
          setBusy(false);
          return true;
        }else {
          setBusy(false);
          return false;
        }
      }
      setBusy(false);
      return false;
    }

    Future<bool> getToken() async{
      SharedPreferences prefs =  await SharedPreferences.getInstance();
      var token = prefs.getString('access_token');
      //print(token);
      if(token != null){
        _api.token = token;
        return true;
      }
      return false;
    }

    Future<void>saveToken(String token) async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.remove('access_token');
      prefs.setString('access_token', token);
      _api.token = token;
    }

    Future<bool> login(String email,password) async {
      setBusy(true);
      var response = await _authService.login(email, password);
      print(response.toString());
      var data =jsonDecode(response.toString());
      print(data.toString());
      if(data['error'] == null && response.statusCode == 200){
        await saveToken(data['access_token']);
        setBusy(false);
        return true;
      }else{
        setBusy(false);
        setMessage(data['error']);
        return false;
      }
    }

/*    Future<bool> test() async {
      var response = await _authService.test(_user);
      if(response.statusCode == 302) {
        print(response.statusMessage);
      }
      return true;
    }*/

    Future<bool> register() async{
      setBusy(true);
      var response = await _authService.register(_user);
      if(response.statusCode == 201){
        var json = jsonDecode(response.toString());
        var result = await login(_user.email, _user.password);
        print(json['data']);
        if(result){
          _user = UserModal.fromJson(json['data']);
          setBusy(false);
          return true;
        }else {
          setMessage('Cannot login, please try again later');
          setBusy(false);
          return false;
        }
      }else if(response.statusCode == 302){
        setMessage('Email already used');
        setBusy(false);
        return false;
      }else {
        setMessage('Something went wrong');
        setBusy(false);
        return false;
      }
    }

    Future<bool> logout() async{
      await _authService.logout();
      SharedPreferences prefs =  await SharedPreferences.getInstance();
      prefs.remove('access_token');
      return true;
    }

}
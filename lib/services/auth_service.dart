
import 'package:authenticationdemoapp/models/user_modal.dart';
import 'package:dio/dio.dart';

import 'base_api.dart';

class AuthService extends BaseApi {

    Future<Response> getUser() async {
      return await api.httpGet('user');
    }

    Future<Response> login(String email,String password) async {
      return await api.httpPost('login', {'email': email, 'password': password});
    }

    Future<Response> register(UserModal user) async {
      return await api.httpPost('register', {'email': user.email,'password': user.password, 'name':user.name});
    }
/*    Future<Response> test(UserModal user) async {
      return await api.httpTest('register', {'email': user.email,'password': user.password, 'name':user.name});
    }*/

    Future<Response> logout() async {
      return await api.httpPost('logout', {});
    }
}
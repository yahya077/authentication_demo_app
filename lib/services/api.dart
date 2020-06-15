import 'package:dio/dio.dart';

class Api {
  static final _api = Api._internal();

  factory Api() {
    return _api;
  }

  Api._internal();
  String token;
  String root = 'http://auth.test/api';


  Future<Response> httpGet(String endPath, {Map<String, String> query}) {
    var dio = Dio();
    dio.options.headers['content-Type'] = 'application/json';
    dio.options.headers["Authorization"] = "Bearer $token";

    if(query != null) {
      dio.options.queryParameters = query;
    }
    return dio.get('$root/$endPath');
  }

  Future<Response> httpPost(String endPath, Object body) async{
    var dio = Dio();
    dio.options.headers['content-Type'] = 'application/json';
    dio.options.headers["Authorization"] = "Bearer $token";
    try {
      var response = await dio.post('$root/$endPath', data: body);
      return response;
    } on DioError catch(e) {
      if(e.response != null) {
        return e.response;
      } else{
        return e.response;
      }
    }
  }

/*  Future<Response> httpTest(String endPath, Object body) async{
    var dio = Dio();
    dio.options.headers['content-Type'] = 'application/json';
    dio.options.headers["Authorization"] = "Bearer $token";
    try {
     await dio.post('$root/$endPath', data: body);
    } on DioError catch(e) {
      if(e.response != null) {
        return e.response;
      } else{
        return e.response;
      }
    }
  }*/
}
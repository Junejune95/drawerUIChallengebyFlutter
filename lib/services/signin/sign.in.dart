import 'dart:convert' as convert;
import 'package:dio/dio.dart';
import 'package:kmaxschool/services/api_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

//account sign in
Future<bool> signIn(String email, String password) async {
  var baseUrl = apiBaseUrl;
  var url = baseUrl + '/api/v1/users/login';

  Dio dio = new Dio();

  var body = convert
      .jsonEncode({"email": email, "password": password}); // just like JS

  var response = await dio.post(url,
      data: body,
      options: Options(
          method: 'POST',
          responseType: ResponseType.json // or ResponseType.JSON
          ));
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (response.statusCode == 200) {
    print('Fg Pwd: $response.');
    // var result = await response.stream.bytesToString();
    var result = response.data;
    prefs.setString('token', result['token']);
    prefs.setString('user', convert.jsonEncode(result['user']));

    return true;
  } else {
    print('Request failed with status: ${response}.');
    return true;
  }
}


import 'package:kmaxschool/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;

Future<UserModel> getUserData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var user = await convert.jsonDecode(prefs.getString('user'));
  UserModel userdata = new UserModel.fromJson(user);
  return userdata;
}

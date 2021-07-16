import 'package:flutter/material.dart';
import 'package:kmaxschool/route.dart';
import 'package:kmaxschool/screen/home/teacher_timeline/teacher_timeline_screen.dart';
import 'package:kmaxschool/screen/signin/sign_in_screen.dart';
import 'package:kmaxschool/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isLogin;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isLogin = await prefs.get('user') == null ? false : true;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kmax School',
      theme: theme(),
      // home: SignIn(),
      // We use routeName so that we dont need to remember the name
      initialRoute:
          isLogin == true ? TeacherTimeLineScreen.routeName : SignInScreen.routeName,
      routes: routes,
    );
  }
}

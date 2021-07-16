import 'package:flutter/widgets.dart';
import 'package:kmaxschool/app_enum.dart';
import 'package:kmaxschool/screen/class/class_screen.dart';
import 'package:kmaxschool/screen/home/home_screen.dart';
import 'package:kmaxschool/screen/home/payment_info/payment_info_screen.dart';
import 'package:kmaxschool/screen/home/teacher_timeline/teacher_timeline_screen.dart';
import 'package:kmaxschool/screen/report/report_screen.dart';
import 'package:kmaxschool/screen/signin/sign_in_screen.dart';
import 'package:kmaxschool/screen/user/user_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
    SignInScreen.routeName: (context) => SignInScreen(),
    HomeScreen.routeName: (context) => HomeScreen(),
    UserScreen.routeName: (context) => UserScreen(),
    ClassScreen.routeName: (context) => ClassScreen(),
    ReportScreen.routeName: (context) => ReportScreen(),
    PaymentInfo.routeName: (context) => PaymentInfo(),
    TeacherTimeLineScreen.routeName: (context) => TeacherTimeLineScreen(),
};

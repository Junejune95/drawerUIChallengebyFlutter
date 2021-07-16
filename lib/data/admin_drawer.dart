import 'package:kmaxschool/screen/class/class_screen.dart';
import 'package:kmaxschool/screen/home/payment_info/payment_info_screen.dart';
import 'package:kmaxschool/screen/home/teacher_timeline/teacher_timeline_screen.dart';
import 'package:kmaxschool/screen/report/report_screen.dart';
import 'package:kmaxschool/screen/user/user_screen.dart';

import '../app_enum.dart';

final List<Menu> adminMenus = [Menu.Home, Menu.User, Menu.Class, Menu.Report];

final List adminexpandMenu = [
  [MenuExpand.TeacherTimeLine, MenuExpand.PaymentInfo],
  [
    MenuExpand.Admin,
    MenuExpand.Teacher,
    MenuExpand.Parent,
    MenuExpand.Student,
    MenuExpand.StudentAffair
  ],
  [MenuExpand.Class],
  [MenuExpand.Report],
];

final List adminRoute = [
  [
    TeacherTimeLineScreen.routeName,
    PaymentInfo.routeName,
  ],
  [
    UserScreen.routeName,
    UserScreen.routeName,
     UserScreen.routeName,
      UserScreen.routeName,
   UserScreen.routeName,
      UserScreen.routeName,
  ],
  [
    ClassScreen.routeName,
  ],
  [ReportScreen.routeName]
];

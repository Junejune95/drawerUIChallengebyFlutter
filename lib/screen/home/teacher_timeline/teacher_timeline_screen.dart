import 'package:flutter/material.dart';
import 'package:kmaxschool/widgets/main_widget.dart';

class TeacherTimeLineScreen extends StatelessWidget {
  static String routeName = "/teacher_timeline";
  

  @override
  Widget build(BuildContext context) {
    return  MainWidget(
      widget: Container(
        child: Text('Teacher Timeline'),
      ),
      title: 'Teacher Timeline',
    );
  }
}
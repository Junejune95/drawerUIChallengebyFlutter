import 'package:flutter/material.dart';
import 'package:kmaxschool/widgets/main_widget.dart';

class ClassScreen extends StatelessWidget {
  static String routeName = "/class";

  @override
  Widget build(BuildContext context) {
    return  MainWidget(
      widget: Container(
        child: Text('Class'),
      ),
      title: 'Class',
    );
  }
}

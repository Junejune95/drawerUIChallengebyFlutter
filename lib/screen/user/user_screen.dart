import 'package:flutter/material.dart';
import 'package:kmaxschool/app_enum.dart';
import 'package:kmaxschool/widgets/main_widget.dart';

class UserScreen extends StatelessWidget {
  static String routeName = "/user";

  final Role role;

  const UserScreen({Key key,this.role}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MainWidget(
      widget: Container(
        child: Text('User'),
      ),
      title: 'User',
    );
  }
}
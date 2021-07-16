import 'package:flutter/material.dart';
import 'package:kmaxschool/models/user_model.dart';
import 'package:kmaxschool/services/global/gobal.dart';

import 'drawer/navigation_drawer_widget.dart';

Future<UserModel> userData;

class MainWidget extends StatefulWidget {
  final Widget widget;
  final String title;

  const MainWidget({Key key, @required this.widget, @required this.title})
      : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  void initState() {
    super.initState();
    userData = getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: userData,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Container(
                  padding: EdgeInsets.only(top: 120), child: Text('waiting'));
            default:
              if (snapshot.hasError)
                return Text('Error: ${snapshot.error}');
              else {
                UserModel data = snapshot.data;
                return SafeArea(
                  child: Scaffold(
                    drawer: NavigationDrawerWidget(
                      name: data.username,
                      image: data.image,
                      role: data.role,
                    ),
                    appBar: AppBar(
                      title: Text(widget.title),
                    ),
                    body: widget.widget,
                  ),
                );
              }
          }
        });
  }
}

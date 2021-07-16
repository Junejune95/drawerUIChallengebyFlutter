import 'package:flutter/material.dart';
import 'package:kmaxschool/models/user_model.dart';
import 'package:kmaxschool/services/global/gobal.dart';
import 'package:kmaxschool/widgets/drawer/navigation_drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

Future<UserModel> userData;

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    print(getUserData());
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
                      title: Text('Home'),
                    ),
                  ),
                );
              }
          }
        });
  }
}

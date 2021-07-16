import 'package:flutter/material.dart';
import 'package:kmaxschool/screen/signin/components/body.dart';

import '../../size_config.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

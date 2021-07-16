import 'package:flutter/material.dart';
import 'package:kmaxschool/screen/signin/components/sign_form.dart';

import '../../../size_config.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20.0),
            // vertical: getProportionateScreenWidth(100.0),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.2),
                Text(
                  "Sign in",
                  style: Theme.of(context).textTheme.headline4
                ),
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                SignForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

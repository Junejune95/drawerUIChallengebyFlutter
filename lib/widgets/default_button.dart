import 'package:flutter/material.dart';
import 'package:kmaxschool/constants.dart';
import 'package:kmaxschool/size_config.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: Theme.of(context).textTheme.button,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}

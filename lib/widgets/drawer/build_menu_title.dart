import 'package:flutter/material.dart';
import 'package:kmaxschool/app_enum.dart';
import 'package:kmaxschool/constants.dart';

class BuildMenuTitle extends StatelessWidget {
  final MenuExpand title;
  final MenuExpand selectedtile;

  const BuildMenuTitle({
    Key key,
    @required this.title,
    @required this.selectedtile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(selectedtile);
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.5,
      padding: EdgeInsets.symmetric(horizontal : 20,vertical: 16),
      decoration: BoxDecoration(
        color: selectedtile == title ? kSecondaryColor : kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Text(
        getMenuTitle(this.title).toUpperCase(),
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          // fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

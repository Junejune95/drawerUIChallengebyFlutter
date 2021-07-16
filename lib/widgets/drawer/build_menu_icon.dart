import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kmaxschool/constants.dart';

import '../../app_enum.dart';

class BuildMenuIcon extends StatelessWidget {
  final Menu menu;
  final Menu selectedMenu;

  const BuildMenuIcon({
    Key key,
    @required this.menu,
    @required this.selectedMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: menu == selectedMenu ? kSecondaryColor : Color(0xFF909090),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        getMenuIconUrl(menu),
        color:
            menu == selectedMenu ? Colors.white : Colors.white.withOpacity(0.8),
        fit: BoxFit.contain,
      ),
    );
  }
}

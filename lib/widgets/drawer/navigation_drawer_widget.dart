import 'package:flutter/material.dart';
import 'package:kmaxschool/constants.dart';
import 'package:kmaxschool/constants/animated_list.dart';
import 'package:kmaxschool/data/admin_drawer.dart';
import 'package:kmaxschool/models/user_model.dart';
import 'package:kmaxschool/size_config.dart';
import 'package:kmaxschool/widgets/drawer/build_header.dart';
import 'package:kmaxschool/widgets/drawer/build_menu_icon.dart';
import 'package:kmaxschool/widgets/drawer/build_menu_title.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;

import '../../app_enum.dart';

class NavigationDrawerWidget extends StatefulWidget {
  final String image;
  final String name;
  final String role;

  const NavigationDrawerWidget({
    Key key,
    @required this.image,
    @required this.name,
    @required this.role,
  }) : super(key: key);

  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

UserModel userData;

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  List _menus, _menuExpand;
  int _selectedMenu = 0;
  int _selectedExpandMenu = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      getUserData();
    });
  }

  void getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var user = await convert.jsonDecode(prefs.getString('user'));
    userData = new UserModel.fromJson(user);
    checkRole();
  }

  void checkRole() {
    if (userData.role == Role.Admin.toString()) {
      _menus = adminMenus;
      _menuExpand = adminexpandMenu[0];
    }
  }

  void _onSelectedMenu(int index) {
    setState(() {
      _selectedMenu = index;
      _menuExpand = _menuExpand[_selectedMenu];
      _selectedExpandMenu = 0;
    });
  }

  void _onSelectedMenuExpand(int index) {
    setState(() {
      _selectedExpandMenu = index;
      Navigator.pushNamed(
        context,
        adminRoute[_selectedMenu][_selectedExpandMenu],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;

    return Container(
      // width: MediaQuery.of(context).size.width,
      height: SizeConfig.screenHeight,
      child: Drawer(
        child: Material(
          color: kPrimaryColor,
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: BuildHeader(
                  image: widget.image,
                  name: widget.name,
                  role: widget.role,
                ),
              ),
              Flexible(
                flex: 5,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Color(0xFF909090),
                        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: Column(
                          children: List.generate(
                            _menus.length,
                            (index) => InkWell(
                              onTap: () {
                                _onSelectedMenu(index);
                              },
                              child: BuildMenuIcon(
                                menu: _menus[index],
                                selectedMenu: _selectedMenu == -1
                                    ? null
                                    : _menus[_selectedMenu],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: List.generate(
                            _menuExpand.length,
                            (index) => InkWell(
                              onTap: () {
                                _onSelectedMenuExpand(index);
                              },
                              child: BuildAnimatedList(
                                index: index,
                                widget: BuildMenuTitle(
                                  title: _menuExpand[index],
                                  selectedtile: _selectedExpandMenu == null
                                      ? null
                                      : _menuExpand[_selectedExpandMenu],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

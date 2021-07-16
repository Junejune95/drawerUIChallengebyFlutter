import 'package:flutter/material.dart';
import 'package:kmaxschool/widgets/main_widget.dart';

class ReportScreen extends StatelessWidget {
  static String routeName = "/report";

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      widget: Container(
        child: Text('Report'),
      ),
      title: 'Report',
    );
  }
}

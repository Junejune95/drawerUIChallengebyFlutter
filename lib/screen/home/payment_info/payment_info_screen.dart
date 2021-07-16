import 'package:flutter/material.dart';
import 'package:kmaxschool/widgets/main_widget.dart';

class PaymentInfo extends StatelessWidget {
  static String routeName = "/payment_info";

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      widget: Container(
        child: Text('Payment Info'),
      ),
      title: 'Payment Info',
    );
  }
}

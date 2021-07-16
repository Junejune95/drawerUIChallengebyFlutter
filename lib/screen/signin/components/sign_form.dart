import 'package:flutter/material.dart';
import 'package:kmaxschool/widgets/default_button.dart';
import 'package:kmaxschool/constants.dart';
import 'package:kmaxschool/screen/home/home_screen.dart';
import 'package:kmaxschool/services/signin/sign.in.dart';

import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool _showPassword = false;

  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: 'Sign in',
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                // KeyboardUtil.hideKeyboard(context);
                signIn(emailController.text, passwordController.text)
                    .then((value) => {
                          Navigator.pushNamed(context, HomeScreen.routeName),
                        });
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: !_showPassword,
      onSaved: (newValue) => password = newValue,
      controller: passwordController,
      validator: (value) {
        password = value;
        if (value == null || value.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        suffixIcon: IconButton(
          icon: Icon(
              _showPassword == false ? Icons.visibility_off : Icons.visibility),
          onPressed: () {
            _togglevisibility();
          },
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      controller: emailController,
      validator: (value) {
        email = value;
        if (value == null || value.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
      ),
    );
  }
}

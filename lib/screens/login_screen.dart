import 'package:firebase_flutter_chat/constants.dart';
import 'package:flutter/material.dart';
import '../components/button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87),
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: inputStyles(
                placeholder: 'Enter your email',
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87),
              obscureText: true,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: inputStyles(
                placeholder: 'Enter your password.',
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            ButtonWidget(
              toScreen: () {},
              color: Colors.lightBlueAccent,
              label: 'Log In',
            )
          ],
        ),
      ),
    );
  }
}
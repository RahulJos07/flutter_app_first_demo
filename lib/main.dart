import 'package:flutter/material.dart';
import 'package:flutter_app_first/widgets/login_page.dart';
import 'package:flutter_app_first/widgets/home_page.dart';
import 'package:flutter_app_first/utils/colors.dart';

void main() => runApp(new MaterialApp(home: new MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: primaryDark,
        accentColor: colorAccent,
      ),
      home: HomePage(EmailId: "ewewwqe", Password: "123",),
    );
  }
}


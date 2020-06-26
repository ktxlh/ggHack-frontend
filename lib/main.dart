import 'package:flutter/material.dart';
import 'helpers/Constants.dart';
import 'LoginPage.dart';
import 'HomePage.dart';
import 'QrCode.dart';

void main() {
  runApp(RossApp());
}

class RossApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    loginPageTag: (context) => LoginPage(),
    homePageTag: (context) => QrCodePage(),//HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: new ThemeData(
        primaryColor: colorDark,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}

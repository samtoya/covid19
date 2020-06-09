import 'package:covid19/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:covid19/screens/landing_screen.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Avenir',
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w300,
            color: Hexcolor('#3C4954'),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
        ),
      ),
      initialRoute: DashboardScreen.id,
      routes: <String, Widget Function(BuildContext)>{
        DashboardScreen.id: (context) => DashboardScreen(),
        LandingScreen.id: (context) => LandingScreen(),
      },
    );
  }
}

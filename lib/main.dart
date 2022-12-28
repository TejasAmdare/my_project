import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/pages/home.dart';
import 'package:my_project/pages/loging_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double pi = 3.14;
    // bool gender = true;

    // var day = 'Tuesday';
    // const pi = 3.14;
    // final
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.amber,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => LogingPage(),
        "/home": (context) => HomePage(),
        "/Loging": (context) => LogingPage()
      },
    );
  }
}

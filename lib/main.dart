import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/pages/home.dart';
import 'package:my_project/pages/loging_page.dart';
import 'package:my_project/utils/routes.dart';
import 'package:my_project/widgets/theam.dart';

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
      theme: MyTheam.lighttheam(context),
      darkTheme: MyTheam.darktheam(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LogingPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LogingPage()
      },
    );
  }
}

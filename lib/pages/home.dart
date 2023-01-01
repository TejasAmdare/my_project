import 'package:flutter/material.dart';
import 'package:my_project/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int Days = 30;
    String name = "Codepur";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $Days days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

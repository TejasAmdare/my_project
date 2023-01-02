import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:my_project/widgets/drawer.dart';
import 'package:my_project/models/catalog.dart';
import 'package:my_project/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final String name = "Codepur";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
    setState(() {});
  }

  loadData() async {
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogjson);
    var prodectsData = decodeData["products"];
    CatalogModel.items = List.from(prodectsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return IteamWidget(item: CatalogModel.items[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

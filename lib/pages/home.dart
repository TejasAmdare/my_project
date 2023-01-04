import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:my_project/widgets/drawer.dart';
import 'package:my_project/models/catalog.dart';
import 'package:my_project/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final String name = "Codepur";

  Catalog? catalog;
  @override
  void initState() {
    super.initState();
    loadData();
    setState(() {});
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogjson);

    catalog = Catalog.fromJson(decodeData);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (catalog?.products != null && catalog!.products!.isNotEmpty)
            ? ListView.builder(
                itemCount: catalog?.products?.length,
                itemBuilder: (context, index) {
                  return IteamWidget(item: catalog!.products![index]);
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}

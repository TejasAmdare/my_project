// import 'dart:html';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/models/catalog.dart';

class IteamWidget extends StatelessWidget {
  final Item item;

  const IteamWidget({super.key, required this.item})
      : assert(item != null),
        super();

  @override
  Widget build(BuildContext context) {
    // video at 3:56
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(
          item.name,
          style: GoogleFonts.openSans(),
        ),
        subtitle: Text(item.desc, textScaleFactor: 1),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

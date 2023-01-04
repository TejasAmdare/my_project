// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:matcher/matcher.dart';

class MyDrawer extends StatelessWidget {
  // const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.fortishealthcare.com/blog/wp-content/uploads/2016/02/Beautiful-Wallpapers-14.jpg";
    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                // decoration: BoxDecoration(color: Colors.green),
                accountName: Text("Tejas Amdare"),
                accountEmail: Text("tejasamdare@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    radius: 50, backgroundImage: NetworkImage(imageUrl)),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

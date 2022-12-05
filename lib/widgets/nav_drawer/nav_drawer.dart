import 'package:candy_labs/widgets/nav_drawer/drawer_item.dart';
import 'package:candy_labs/widgets/nav_drawer/nav_drawer_header.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.black12.withOpacity(0.7),
        boxShadow: const <BoxShadow>[
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: const <Widget>[
          NavDrawerHeader(),
          DrawerItem(title: 'home', icon: Icons.home),
          DrawerItem(title: 'members', icon: Icons.account_circle),
          DrawerItem(title: 'contact', icon: Icons.mail),
        ],
      ),
    );
  }
}

import 'package:candy_labs/widgets/nav_drawer/drawer_item.dart';
import 'package:candy_labs/widgets/nav_drawer/nav_drawer_header.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.black12,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: const <Widget>[
          NavDrawerHeader(),
          DrawerItem(title: 'Members', icon: Icons.videocam),
          DrawerItem(title: 'About', icon: Icons.help),
        ],
      ),
    );
  }
}

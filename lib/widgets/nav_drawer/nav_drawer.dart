import 'package:auto_route/auto_route.dart';
import 'package:candy_labs/auto_route/router.gr.dart';
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
        children: <Widget>[
          const NavDrawerHeader(),
          GestureDetector(
            onTap: () {
              AutoRouter.of(context).replace(const HomeRoute());
            },
            child: const DrawerItem(title: 'home', icon: Icons.home),
          ),
          GestureDetector(
            onTap: () {
              AutoRouter.of(context).replace(const MembersRoute());
            },
            child: const DrawerItem(title: 'members', icon: Icons.home),
          ),
          GestureDetector(
            onTap: () {
              AutoRouter.of(context).replace(const ContactRoute());
            },
            child: const DrawerItem(title: 'contact', icon: Icons.mail),
          ),
        ],
      ),
    );
  }
}

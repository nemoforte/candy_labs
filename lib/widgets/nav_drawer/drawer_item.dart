import 'package:candy_labs/widgets/navbar/navbar_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const DrawerItem({required this.title, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.white70),
          const SizedBox(
            width: 30,
          ),
          NavBarItem(title: title)
        ],
      ),
    );
  }
}

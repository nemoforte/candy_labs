import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;

  const NavBarItem({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, color: Colors.white70),
      ),
    );
  }
}

import 'package:candy_labs/widgets/hover/translate_on_hover.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;

  const NavBarItem({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: TranslateOnHover(
        child: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

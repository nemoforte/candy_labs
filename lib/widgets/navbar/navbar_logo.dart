import 'package:auto_route/auto_route.dart';
import 'package:candy_labs/auto_route/router.gr.dart';
import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          AutoRouter.of(context).replace(const HomeRoute());
        },
        child: SizedBox(
          height: 80,
          width: 150,
          child: Image.asset('assets/logo.png'),
        ),
      ),
    );
  }
}

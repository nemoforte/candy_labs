import 'package:candy_labs/widgets/navbar/navbar_mobile.dart';
import 'package:candy_labs/widgets/navbar/navbar_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const NavBarMobile(),
      tablet: const NavBarTabletDesktop(),
      desktop: const NavBarTabletDesktop(),
    );
  }
}
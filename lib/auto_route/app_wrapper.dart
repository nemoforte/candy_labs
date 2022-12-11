import 'package:auto_route/auto_route.dart';
import 'package:candy_labs/widgets/nav_drawer/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? const NavDrawer() : null,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bc.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: const AutoRouter(),
        ),
      ),
    );
  }
}

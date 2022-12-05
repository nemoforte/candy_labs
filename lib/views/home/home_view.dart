import 'package:candy_labs/views/home/home_content_desktop.dart';
import 'package:candy_labs/views/home/home_content_mobile.dart';
import 'package:candy_labs/widgets/nav_drawer/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
          child: ScreenTypeLayout(
            mobile: const HomeContentMobile(),
            desktop: const HomeContentDesktop(),
          ),
        ),
      ),
    );
  }
}

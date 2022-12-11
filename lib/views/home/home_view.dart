import 'package:candy_labs/views/home/home_content_desktop.dart';
import 'package:candy_labs/views/home/home_content_mobile.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Column(
        children: <Widget>[
          const NavBar(),
          ScreenTypeLayout(
            mobile: const HomeContentMobile(),
            desktop: const HomeContentDesktop(),
          ),
        ],
      ),
    );
  }
}

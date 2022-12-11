import 'package:auto_route/auto_route.dart';
import 'package:candy_labs/auto_route/router.gr.dart';
import 'package:candy_labs/widgets/navbar/navbar_item.dart';
import 'package:candy_labs/widgets/navbar/navbar_logo.dart';
import 'package:flutter/material.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).replace(const HomeRoute());
                },
                child: const NavBarItem(title: 'home'),
              ),
              const SizedBox(
                width: 60,
              ),
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).replace(const MembersRoute());
                },
                child: const NavBarItem(title: 'members'),
              ),
              const SizedBox(
                width: 60,
              ),
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).replace(const ContactRoute());
                },
                child: const NavBarItem(title: 'contact'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

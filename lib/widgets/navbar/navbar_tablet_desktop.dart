import 'package:candy_labs/views/contact/contact_view.dart';
import 'package:candy_labs/views/home/home_view.dart';
import 'package:candy_labs/views/members/members_view.dart';
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => const HomeView()),
                  );
                },
                child: const NavBarItem(title: 'home'),),
              const SizedBox(width: 60,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => const MembersView()),
                  );
                },
                child: const NavBarItem(title: 'members'),),
              const SizedBox(width: 60,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => const ContactView()),
                  );
                },
                child: const NavBarItem(title: 'contact'),),
            ],
          )
        ],
      ),
    );
  }
}

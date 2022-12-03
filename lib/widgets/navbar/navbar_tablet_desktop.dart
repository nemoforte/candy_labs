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
            children: const <Widget>[
              NavBarItem(title: 'home'),
              SizedBox(width: 60,),
              NavBarItem(title:'members',),
              SizedBox(width: 60,),
              NavBarItem(title: 'contact')
            ],
          )
        ],
      ),
    );
  }
}

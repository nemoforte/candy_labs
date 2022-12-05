import 'package:candy_labs/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        gradient: gradient1,
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text(
            'HALO HALO',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          Text(
            'TAP HERE',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

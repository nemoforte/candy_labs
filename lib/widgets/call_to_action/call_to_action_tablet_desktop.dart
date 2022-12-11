import 'package:auto_route/auto_route.dart';
import 'package:candy_labs/auto_route/router.gr.dart';
import 'package:flutter/material.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;
  const CallToActionTabletDesktop({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Colors.pink,
            Colors.deepOrangeAccent
          ],
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child:  GestureDetector(
        onTap: () {
          AutoRouter.of(context).replace(const MembersRoute());
        },
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

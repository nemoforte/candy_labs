import 'package:candy_labs/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CallToActionMobile extends StatelessWidget {
  final String title;

  const CallToActionMobile({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      decoration: BoxDecoration(
        gradient: gradient1,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
    );
  }
}

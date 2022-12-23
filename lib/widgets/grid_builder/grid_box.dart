import 'package:flutter/material.dart';

class GridBox extends StatelessWidget {
  final int flex;

  const GridBox({required this.flex, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GridBox extends StatelessWidget {
  final int flex;

  final double? height;

  final double? width;

  final Widget? child;

  const GridBox({required this.flex, this.height, this.width, super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            color: Colors.white70,
          ),
          child: child,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GridSpace extends StatelessWidget {
  final int flex;

  final double? height;

  final double? width;

  final Widget? child;

  const GridSpace({required this.flex, this.height, this.width, super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: height,
          width: width,
          child: child,
        ),
      ),
    );
  }
}

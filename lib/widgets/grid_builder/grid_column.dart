import 'package:flutter/material.dart';

class GridColumn extends StatelessWidget {
  final int flex;

  final List<Widget> children;

  const GridColumn({required this.flex, required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Column(
        children: children,
      ),
    );
  }
}
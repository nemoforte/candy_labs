import 'package:flutter/material.dart';

class GridRow extends StatelessWidget {
  final int flex;

  final List<Widget> children;

  const GridRow({required this.flex, required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Row(
        children: children,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class GridRow extends StatelessWidget {
  final int flex;

  final List<Widget> children;

  final MainAxisAlignment mainAxisAlignment;

  final CrossAxisAlignment crossAxisAlignment;

  const GridRow({required this.flex, required this.children, this.mainAxisAlignment = MainAxisAlignment.center, this.crossAxisAlignment = CrossAxisAlignment.center, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: children,
      ),
    );
  }
}
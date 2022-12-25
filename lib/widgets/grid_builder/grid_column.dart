import 'package:flutter/material.dart';

class GridColumn extends StatelessWidget {
  final int flex;

  final List<Widget> children;

  final MainAxisAlignment mainAxisAlignment;

  final CrossAxisAlignment crossAxisAlignment;

  const GridColumn({required this.flex, required this.children, this.mainAxisAlignment = MainAxisAlignment.center, this.crossAxisAlignment = CrossAxisAlignment.center, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: flex,
      child: Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: children,
      ),
    );
  }
}
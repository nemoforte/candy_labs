import 'package:candy_labs/views/members/select_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridElement extends StatelessWidget {
  final int flex;

  final double? height;

  final double? width;

  final Widget? child;

  const GridElement ({required this.flex, required this.child, this.height, this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectLogic, int>(
      builder: (BuildContext context, int count) => Flexible(
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
      ),
    );
  }
}

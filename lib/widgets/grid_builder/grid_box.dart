import 'package:candy_labs/views/members/select_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridBox extends StatelessWidget {
  final int flex;

  final double? height;

  final double? width;

  final Widget? child;

  const GridBox({required this.flex, this.height, this.width, super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectLogic, int>(
      builder: (BuildContext context, int count) => Flexible(
        fit: FlexFit.tight,
        flex: flex,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: count == 7
                  ? Colors.purple
                  : count == 6
                      ? Colors.greenAccent
                      : count == 5
                          ? Colors.lime
                          : count == 4
                              ? Colors.red
                              : count == 3
                                  ? Colors.orange
                                  : count == 2
                                      ? Colors.yellow
                                      : Colors.pink,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

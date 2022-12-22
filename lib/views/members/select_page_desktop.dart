import 'package:candy_labs/views/members/select_logic.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectPageDesktop extends StatelessWidget {
  const SelectPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (BuildContext context, int count) => CenteredView(
        child: Column(
          children: <Widget>[
            const NavBar(),
            Expanded(
              child: Row(
                children: const <Widget>[
                  GridColumn(flex: 2, children: <Widget>[
                    GridRow(
                      flex: 1,
                      children: <Widget>[
                        GridBox(flex: 1),
                        GridColumn(
                          flex: 2,
                          children: <Widget>[
                            GridBox(flex: 1),
                            GridBox(flex: 1),
                          ],
                        ),
                        GridBox(flex: 1),
                      ],
                    ),
                    GridBox(flex: 2),
                  ]),
                  SizedBox(width: 50),
                  GridColumn(
                    flex: 1,
                    children: <Widget>[
                      GridBox(flex: 1),
                      GridBox(flex: 1),
                      GridBox(flex: 1),
                      GridBox(flex: 1),
                      GridBox(flex: 1),
                      GridBox(flex: 1),
                      GridBox(flex: 1),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// const CircleAvatar(foregroundImage: AssetImage('assets/MS.jpg'), radius: 80),
// const SizedBox(
// width: 20,
// ),
// Column(
// mainAxisAlignment: MainAxisAlignment.start,
// children: const <Widget>[
// Text(
// 'Marcin',
// style: TextStyle(fontWeight: FontWeight.w600, fontSize: 100, color: Colors.white),
// ),
// Text(
// 'Skiper',
// style: TextStyle(fontWeight: FontWeight.w400, fontSize: 100, color: Colors.white),
// ),
// ],
// ),
// ],
// ),

import 'package:candy_labs/views/members/select_logic.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/grid_builder/grid_box.dart';
import 'package:candy_labs/widgets/grid_builder/grid_column.dart';
import 'package:candy_labs/widgets/grid_builder/grid_row.dart';
import 'package:candy_labs/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectPageDesktop extends StatelessWidget {
  const SelectPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectLogic, int>(
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
                      Clickable(person: 1, name: 'aaa'),
                      Clickable(person: 2, name: 'bbb'),
                      Clickable(person: 3, name: 'ccc'),
                      Clickable(person: 4, name: 'ddd'),
                      Clickable(person: 5, name: 'eee'),
                      Clickable(person: 6, name: 'fff'),
                      Clickable(person: 7, name: 'ggg'),
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

class Clickable extends StatelessWidget {
  final int person;

  final String name;

  const Clickable({required this.person, required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: GridBox(
            flex: 1,
            height: 50,
            width: 200,
            child: Text(
              name,
              style: const TextStyle(color: Colors.black),
            )),
        onTap: () {
          context.read<SelectLogic>().number(person);
        },
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

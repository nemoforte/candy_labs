import 'package:candy_labs/views/members/members_data.dart';
import 'package:candy_labs/views/members/select_logic.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/grid_builder/grid_box.dart';
import 'package:candy_labs/widgets/grid_builder/grid_column.dart';
import 'package:candy_labs/widgets/grid_builder/grid_element.dart';
import 'package:candy_labs/widgets/grid_builder/grid_row.dart';
import 'package:candy_labs/widgets/members_details/members_name.dart';
import 'package:candy_labs/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectPageDesktop extends StatelessWidget {
  const SelectPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectLogic, int>(
      builder: (BuildContext context, int count) =>
          CenteredView(
            child: Column(
              children: <Widget>[
                const NavBar(),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      GridColumn(flex: 2, children: <Widget>[
                        GridRow(
                          flex: 1,
                          children: <Widget>[
                            GridElement(
                              flex: 1,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: CircleAvatar(
                                  foregroundImage: AssetImage(image(count)),
                                ),
                              ),
                            ),
                            GridElement(
                              flex: 2,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: MembersName(firstName: firstName(count), lastName: lastName(count)),
                              ),
                            ),
                          ],
                        ),
                        const GridBox(flex: 2),
                      ]),
                      const SizedBox(width: 50),
                      const GridColumn(
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

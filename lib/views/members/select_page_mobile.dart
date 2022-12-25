import 'package:candy_labs/views/members/select_logic.dart';
import 'package:candy_labs/views/members/select_page_desktop.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/grid_builder/grid_box.dart';
import 'package:candy_labs/widgets/grid_builder/grid_column.dart';
import 'package:candy_labs/widgets/grid_builder/grid_row.dart';
import 'package:candy_labs/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectPageMobile extends StatelessWidget {
  const SelectPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectLogic, int>(
      builder: (BuildContext context, int count) => SingleChildScrollView(
        child: CenteredView(
          child: Column(
            children: <Widget>[
              const NavBar(),
              SizedBox(
                height: 1000,
                child: Expanded(
                  child: Column(
                    children: const <Widget>[
                      GridColumn(flex: 1, children: <Widget>[
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
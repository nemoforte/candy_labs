import 'package:candy_labs/views/members/members_data.dart';
import 'package:candy_labs/views/members/select_logic.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/grid_builder/grid_box.dart';
import 'package:candy_labs/widgets/grid_builder/grid_column.dart';
import 'package:candy_labs/widgets/grid_builder/grid_element.dart';
import 'package:candy_labs/widgets/grid_builder/grid_row.dart';
import 'package:candy_labs/widgets/grid_builder/grid_space.dart';
import 'package:candy_labs/widgets/members_details/members_name.dart';
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
                children: <Widget>[
                  GridColumn(flex: 8, children: <Widget>[
                    GridRow(
                      flex: 1,
                      children: <Widget>[
                        GridElement(
                          flex: 1,
                          child: CircleAvatar(
                            foregroundImage: AssetImage(
                              image(count),
                            ),
                          ),
                        ),
                        GridElement(
                          flex: 2,
                          child: MembersName(
                            firstName: firstName(count),
                            lastName: lastName(count),
                          ),
                        ),
                        const GridSpace(
                          flex: 1,
                        )
                      ],
                    ),
                    const GridBox(flex: 2),
                  ]),
                  const GridSpace(flex: 1),
                  GridColumn(
                    flex: 4,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      GridElement(
                        flex: 1,
                        child: _Clickable(
                          person: 1,
                          count: count,
                          role: 'Koordynator',
                        ),
                      ),
                      GridElement(
                        flex: 1,
                        child: _Clickable(
                          person: 2,
                          count: count,
                          role: 'Data Scientist',
                        ),
                      ),
                      GridElement(
                        flex: 1,
                        child: _Clickable(
                          person: 3,
                          count: count,
                          role: 'UX/UI Designer',
                        ),
                      ),
                      GridElement(
                        flex: 1,
                        child: _Clickable(
                          person: 4,
                          count: count,
                          role: 'Technolog mobilny',
                        ),
                      ),
                      GridElement(
                        flex: 1,
                        child: _Clickable(
                          person: 5,
                          count: count,
                          role: 'Programista',
                        ),
                      ),
                      GridElement(
                        flex: 1,
                        child: _Clickable(
                          person: 6,
                          count: count,
                          role: 'Programistka',
                        ),
                      ),
                      GridElement(
                        flex: 1,
                        child: _Clickable(
                          person: 7,
                          count: count,
                          role: 'Kot',
                        ),
                      ),
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

class _Clickable extends StatelessWidget {
  final int person;

  final int count;

  final String role;

  const _Clickable({required this.person, required this.count, required this.role, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Row(
          children: <Widget>[
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                role,
                style: TextStyle(color: person == count ? Colors.white : Colors.white70),
              ),
            ),
            const SizedBox(width: 5),
            Icon(person == count ? Icons.circle : Icons.circle_outlined, color: person == count ? Colors.white : Colors.white70, size: 10),
          ],
        ),
        onTap: () {
          context.read<SelectLogic>().number(person);
        },
      ),
    );
  }
}

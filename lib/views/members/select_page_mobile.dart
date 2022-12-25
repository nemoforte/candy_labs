import 'package:candy_labs/views/members/members_cubit.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/grid_builder/grid_box.dart';
import 'package:candy_labs/widgets/grid_builder/grid_column.dart';
import 'package:candy_labs/widgets/grid_builder/grid_element.dart';
import 'package:candy_labs/widgets/grid_builder/grid_row.dart';
import 'package:candy_labs/widgets/members_details/members_name.dart';
import 'package:candy_labs/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectPageMobile extends StatelessWidget {
  const SelectPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageCubit, List<String>>(
      builder: (BuildContext context, List<String> member) => SingleChildScrollView(
        child: CenteredView(
          child: Column(
            children: <Widget>[
              const NavBar(),
              SizedBox(
                height: 1000,
                child: Expanded(
                  child: Column(
                    children: <Widget>[
                      GridColumn(
                        flex: 3,
                        children: <Widget>[
                          GridRow(
                            flex: 1,
                            children: <Widget>[
                              GridElement(
                                flex: 1,
                                child: CircleAvatar(
                                  foregroundImage: AssetImage(
                                    member[2],
                                  ),
                                ),
                              ),
                              GridElement(
                                flex: 2,
                                child: MembersName(
                                  firstName: member[0],
                                  lastName: member[1],
                                ),
                              ),
                            ],
                          ),
                          const GridBox(flex: 2),
                        ],
                      ),
                      const SizedBox(width: 50),
                      GridColumn(
                        flex: 4,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          GridElement(
                            flex: 1,
                            child: _Clickable(
                                number: '1',
                                role: 'Koordynator',
                                onTap: () {
                                  context.read<ImageCubit>().karol();
                                }),
                          ),
                          GridElement(
                            flex: 1,
                            child: _Clickable(
                                number: '2',
                                role: 'Data Scientist',
                                onTap: () {
                                  context.read<ImageCubit>().olga();
                                }),
                          ),
                          GridElement(
                            flex: 1,
                            child: _Clickable(
                                number: '3',
                                role: 'UX/UI Designer',
                                onTap: () {
                                  context.read<ImageCubit>().marcin();
                                }),
                          ),
                          GridElement(
                            flex: 1,
                            child: _Clickable(
                                number: '4',
                                role: 'Technolog mobilny',
                                onTap: () {
                                  context.read<ImageCubit>().dominik();
                                }),
                          ),
                          GridElement(
                            flex: 1,
                            child: _Clickable(
                                number: '5',
                                role: 'Programista',
                                onTap: () {
                                  context.read<ImageCubit>().pawel();
                                }),
                          ),
                          GridElement(
                            flex: 1,
                            child: _Clickable(
                                number: '6',
                                role: 'Programistka',
                                onTap: () {
                                  context.read<ImageCubit>().renata();
                                }),
                          ),
                          GridElement(
                            flex: 1,
                            child: _Clickable(
                              number: '7',
                              role: 'Kot',
                              onTap: () {
                                context.read<ImageCubit>().mateusz();
                              },
                            ),
                          ),
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

class _Clickable extends StatelessWidget {
  final String number;

  final String role;

  final void Function()? onTap;

  const _Clickable({required this.role, required this.number, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageCubit, List<String>>(
      builder: (BuildContext context, List<String> member) => MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: Row(
            children: <Widget>[
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  role,
                  style: TextStyle(color: number == member[3].toString() ? Colors.white : Colors.white70),
                ),
              ),
              const SizedBox(width: 5),
              Icon(number == member[3].toString() ? Icons.circle : Icons.circle_outlined,
                  color: number == member[3].toString() ? Colors.white : Colors.white70, size: 10),
            ],
          ),
        ),
      ),
    );
  }
}


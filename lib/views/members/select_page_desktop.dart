import 'package:candy_labs/views/members/member.dart';
import 'package:candy_labs/views/members/members_cubit.dart';
import 'package:candy_labs/views/members/members_data.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/grid_builder/grid_box.dart';
import 'package:candy_labs/widgets/grid_builder/grid_column.dart';
import 'package:candy_labs/widgets/grid_builder/grid_element.dart';
import 'package:candy_labs/widgets/grid_builder/grid_row.dart';
import 'package:candy_labs/widgets/grid_builder/grid_space.dart';
import 'package:candy_labs/widgets/members_details/member_list_position.dart';
import 'package:candy_labs/widgets/members_details/members_name.dart';
import 'package:candy_labs/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectPageDesktop extends StatelessWidget {
  const SelectPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MembersCubit, Member>(
      builder: (BuildContext context, Member member) => CenteredView(
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
                              member.avatar,
                            ),
                          ),
                        ),
                        GridElement(
                          flex: 2,
                          child: MembersName(
                            firstName: '${member.firstName} ',
                            lastName: member.lastName,
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
                      Expanded(
                        child: ListView.builder(
                          itemCount: resultList.length,
                          itemBuilder: (_, int index) {
                            return MemberListPosition(
                              onTap: () => context.read<MembersCubit>().number(index),
                              index: index,
                                color: member == memberList[index] ? Colors.white : Colors.white70,
                                iconData: member == memberList[index] ? Icons.circle : Icons.circle_outlined);
                          },
                        ),
                      )
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

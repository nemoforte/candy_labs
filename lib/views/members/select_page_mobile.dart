import 'package:candy_labs/blocs/members/members_bloc.dart';
import 'package:candy_labs/blocs/members/members_cubit.dart';
import 'package:candy_labs/blocs/members/members_event.dart';
import 'package:candy_labs/blocs/members/members_state.dart';
import 'package:candy_labs/models/member.dart';
import 'package:candy_labs/repositories/members_repository.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/grid_builder/grid_column.dart';
import 'package:candy_labs/widgets/grid_builder/grid_element.dart';
import 'package:candy_labs/widgets/grid_builder/grid_row.dart';
import 'package:candy_labs/widgets/grid_builder/grid_space.dart';
import 'package:candy_labs/widgets/members_details/member_list_position.dart';
import 'package:candy_labs/widgets/members_details/members_name.dart';
import 'package:candy_labs/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectPageMobile extends StatelessWidget {
  const SelectPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MembersBloc>(
      create: (BuildContext context) => MembersBloc(
        RepositoryProvider.of<MembersRepository>(context),
      )..add(LoadMembersEvent()),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 1400,
          child: CenteredView(
            child: Column(
              children: <Widget>[
                const NavBar(),
                BlocBuilder<MembersBloc, MembersState>(
                  builder: (BuildContext context, MembersState state) {
                    if (state is MembersLoadingState) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is MembersLoadedState) {
                      List<Member> members = state.members;
                      return BlocProvider<MembersCubit>(
                        create: (_) => MembersCubit(members),
                        child: BlocBuilder<MembersCubit, Member>(
                          builder: (BuildContext context, Member member) => Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                GridColumn(
                                  flex: 4,
                                  children: <Widget>[
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
                                    GridColumn(
                                      flex: 2,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          member.about1,
                                          style: const TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          member.about2,
                                          style: const TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                GridColumn(
                                  flex: 4,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: members.length,
                                        itemBuilder: (_, int index) {
                                          return MemberListPosition(
                                              onTap: () => context.read<MembersCubit>().number(index),
                                              index: index,
                                              members: members,
                                              color: member == members[index] ? Colors.white : Colors.white70,
                                              iconData: member == members[index] ? Icons.circle : Icons.circle_outlined);
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    } else {
                      return const Center(child: Text('Error'));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

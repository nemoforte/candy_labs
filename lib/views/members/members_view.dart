import 'package:candy_labs/views/members/select_logic.dart';
import 'package:candy_labs/views/members/select_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MembersView extends StatelessWidget {
  const MembersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) => BlocProvider<CounterCubit>(
        create: (_) => CounterCubit(),
        child: const CounterPage(),
      ),
    );
  }
}

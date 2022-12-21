import 'package:candy_labs/views/members/counter_cubit.dart';
import 'package:candy_labs/views/members/counter_page.dart';
import 'package:candy_labs/widgets/nav_drawer/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MembersView extends StatelessWidget {
  const MembersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) => MaterialApp(
        home: BlocProvider<CounterCubit>(
          create: (_) => CounterCubit(),
          child: const CounterPage(),
        ),
      ),
    );
  }
}

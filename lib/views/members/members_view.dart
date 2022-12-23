import 'package:candy_labs/views/members/select_logic.dart';
import 'package:candy_labs/views/members/select_page_desktop.dart';
import 'package:candy_labs/views/members/select_page_mobile.dart';
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
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 31, 17, 30),
                Color.fromARGB(255, 46, 37, 20),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: ScreenTypeLayout(
            mobile: const SelectPageMobile(),
            desktop: const SelectPageDesktop(),
          ),
        ),
      ),
    );
  }
}

import 'package:candy_labs/views/contact/counter_cubit.dart';
import 'package:candy_labs/views/contact/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

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

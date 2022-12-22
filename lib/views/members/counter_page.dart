import 'package:candy_labs/views/members/counter_cubit.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (BuildContext context, int count) => CenteredView(
        child: Column(
          children: <Widget>[
            const NavBar(),
            const SizedBox(height: 200),
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '$count',
              style: const TextStyle(color: Colors.white, fontSize: 40),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () => context.read<CounterCubit>().increment(),
                ),
                const SizedBox(height: 4),
                FloatingActionButton(
                  child: const Icon(Icons.remove),
                  onPressed: () => context.read<CounterCubit>().decrement(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

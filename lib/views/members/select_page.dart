import 'package:candy_labs/views/members/select_logic.dart';
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
            const SizedBox(height: 150),
            const Text(
              'Choose your number',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '$count',
              style: const TextStyle(color: Colors.white, fontSize: 40),
            ),
            Container(
              height: 100,
              width: 100,
              color: count == 5
                  ? Colors.lime
                  : count == 4
                      ? Colors.red
                      : count == 3
                          ? Colors.orange
                          : count == 2
                              ? Colors.yellow
                              : Colors.pink,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  child: const Text('1'),
                  onPressed: () => context.read<CounterCubit>().number(1),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  child: const Text('2'),
                  onPressed: () => context.read<CounterCubit>().number(2),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  child: const Text('3'),
                  onPressed: () => context.read<CounterCubit>().number(3),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  child: const Text('4'),
                  onPressed: () => context.read<CounterCubit>().number(4),
                ),
                const SizedBox(width: 10),
                FloatingActionButton(
                  child: const Text('5'),
                  onPressed: () => context.read<CounterCubit>().number(5),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

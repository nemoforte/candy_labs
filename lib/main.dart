import 'package:candy_labs/auto_route/router.gr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final FlutterRouter _appRouter = FlutterRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Candy Labs',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Palanquin', bodyColor: Colors.white70),
      ),
    );
  }
}

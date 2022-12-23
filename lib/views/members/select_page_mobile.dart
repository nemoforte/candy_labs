import 'package:candy_labs/views/members/select_logic.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/grid_builder/grid_box.dart';
import 'package:candy_labs/widgets/grid_builder/grid_column.dart';
import 'package:candy_labs/widgets/grid_builder/grid_row.dart';
import 'package:candy_labs/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectPageMobile extends StatelessWidget {
  const SelectPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (BuildContext context, int count) => SingleChildScrollView(
        child: CenteredView(
          child: Column(
            children: <Widget>[
              const NavBar(),
              SizedBox(
                height: 1000,
                child: Expanded(
                  child: Column(
                    children: const <Widget>[
                      GridColumn(flex: 1, children: <Widget>[
                        GridRow(
                          flex: 1,
                          children: <Widget>[
                            GridBox(flex: 1),
                            GridColumn(
                              flex: 2,
                              children: <Widget>[
                                GridBox(flex: 1),
                                GridBox(flex: 1),
                              ],
                            ),
                          ],
                        ),
                        GridBox(flex: 2),
                      ]),
                      SizedBox(width: 50),
                      GridColumn(
                        flex: 1,
                        children: <Widget>[
                          GridBox(flex: 1),
                          GridBox(flex: 1),
                          GridBox(flex: 1),
                          GridBox(flex: 1),
                          GridBox(flex: 1),
                          GridBox(flex: 1),
                          GridBox(flex: 1),
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







// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// const CircleAvatar(foregroundImage: AssetImage('assets/MS.jpg'), radius: 80),
// const SizedBox(
// width: 20,
// ),
// Column(
// mainAxisAlignment: MainAxisAlignment.start,
// children: const <Widget>[
// Text(
// 'Marcin',
// style: TextStyle(fontWeight: FontWeight.w600, fontSize: 100, color: Colors.white),
// ),
// Text(
// 'Skiper',
// style: TextStyle(fontWeight: FontWeight.w400, fontSize: 100, color: Colors.white),
// ),
// ],
// ),
// ],
// ),

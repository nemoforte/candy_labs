import 'package:candy_labs/widgets/call_to_action/call_to_action.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/course_details/course_details.dart';
import 'package:candy_labs/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bc.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CenteredView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              NavBar(),
              SizedBox(
                height: 150,
              ),
              CourseDetails(),
              SizedBox(
                height: 50,
              ),
              CallToAction(title: 'More about us')
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:candy_labs/widgets/call_to_action/call_to_action.dart';
import 'package:candy_labs/widgets/candy_details/candy_details.dart';
import 'package:candy_labs/widgets/centered_view/centered_view.dart';
import 'package:candy_labs/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          NavBar(),
          SizedBox(
            height: 150,
          ),
          CandyDetails(),
          SizedBox(
            height: 50,
          ),
          CallToAction(title: 'More about us')
        ],
      ),
    );
  }
}

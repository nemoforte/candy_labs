import 'package:candy_labs/widgets/call_to_action/call_to_action.dart';
import 'package:candy_labs/widgets/candy_details/candy_details.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width,
        ),
        const CandyDetails(),
        const SizedBox(
            height: 50,
          ),
        const CallToAction(title: 'More about us')
      ],
    );
  }
}

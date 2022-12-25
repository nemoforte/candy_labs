import 'package:flutter/material.dart';

class MembersName extends StatelessWidget {

  final String firstName;

  final String lastName;

  const MembersName({required this.lastName, required this.firstName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            firstName,
            style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
          Text(
            lastName,
            style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ],
    );
  }
}

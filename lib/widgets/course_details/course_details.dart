import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'CANDY LABS',
            style: TextStyle(
                fontWeight: FontWeight.w600, height: 0.9, fontSize: 80, color: Colors.white70),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'We are passionate software creators who want to make your life sparkling and colorful. '
            'We desire to deliver tasty in use programs which can make your day brighter. '
          'Our team will work with your idea, to bring to you product like from your dreams.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              height: 1.7,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

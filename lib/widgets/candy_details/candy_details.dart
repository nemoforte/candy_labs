import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CandyDetails extends StatelessWidget {
  const CandyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        TextAlign textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.mobile ? TextAlign.center : TextAlign.left;

        double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ? 50 : 80;

        double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ? 12 : 16;

        CrossAxisAlignment crossAxisAlignment = sizingInformation.deviceScreenType == DeviceScreenType.mobile ? CrossAxisAlignment.center : CrossAxisAlignment.start;

        return SizedBox(
          width: 600,
          child: Column(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'CANDY LABS',
                style: TextStyle(fontWeight: FontWeight.w600, height: 0.9, fontSize: titleSize, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'We are passionate software creators who want to make your life sparkling and colorful. '
                'We desire to deliver tasty in use programs which can make your day brighter. '
                'Our team will work with your idea, to bring to you product like from your dreams.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: descriptionSize,
                  height: 1.7,
                  color: Colors.white70,
                ),
                textAlign: textAlignment,
              ),
            ],
          ),
        );
      },
    );
  }
}

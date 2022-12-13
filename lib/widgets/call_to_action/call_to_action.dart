import 'package:auto_route/auto_route.dart';
import 'package:candy_labs/auto_route/router.gr.dart';
import 'package:candy_labs/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:candy_labs/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  final String title;

  const CallToAction({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            AutoRouter.of(context).replace(const MembersRoute());
            },
          child: ScreenTypeLayout(
             mobile: CallToActionMobile(title: title),
             tablet: CallToActionTabletDesktop(title: title),
              desktop: CallToActionTabletDesktop(title: title),
          ),
        ),
    );
  }
}

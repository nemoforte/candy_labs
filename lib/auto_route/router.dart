import 'package:auto_route/auto_route.dart';
import 'package:candy_labs/auto_route/app_wrapper.dart';
import 'package:candy_labs/views/contact/contact_view.dart';
import 'package:candy_labs/views/home/home_view.dart';
import 'package:candy_labs/views/members/members_view.dart';

@MaterialAutoRouter(replaceInRouteName: 'View,Route', routes: <AutoRoute>[
  AutoRoute<void>(
    page: AppWrapper,
    initial: true,
    children: <AutoRoute>[
      AutoRoute<void>(page: HomeView, initial: true),
      AutoRoute<void>(page: MembersView),
      AutoRoute<void>(page: ContactView),
    ],
  ),
])
class $FlutterRouter {}

// flutter pub run build_runner build --delete-conflicting-outputs

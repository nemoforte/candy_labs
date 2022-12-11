// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../views/contact/contact_view.dart' as _i4;
import '../views/home/home_view.dart' as _i2;
import '../views/members/members_view.dart' as _i3;
import 'app_wrapper.dart' as _i1;

class FlutterRouter extends _i5.RootStackRouter {
  FlutterRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AppWrapper.name: (routeData) {
      return _i5.MaterialPageX<void>(
        routeData: routeData,
        child: const _i1.AppWrapper(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.HomeView(),
      );
    },
    MembersRoute.name: (routeData) {
      return _i5.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.MembersView(),
      );
    },
    ContactRoute.name: (routeData) {
      return _i5.MaterialPageX<void>(
        routeData: routeData,
        child: const _i4.ContactView(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          AppWrapper.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              HomeRoute.name,
              path: '',
              parent: AppWrapper.name,
            ),
            _i5.RouteConfig(
              MembersRoute.name,
              path: 'members-view',
              parent: AppWrapper.name,
            ),
            _i5.RouteConfig(
              ContactRoute.name,
              path: 'contact-view',
              parent: AppWrapper.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.AppWrapper]
class AppWrapper extends _i5.PageRouteInfo<void> {
  const AppWrapper({List<_i5.PageRouteInfo>? children})
      : super(
          AppWrapper.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AppWrapper';
}

/// generated route for
/// [_i2.HomeView]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.MembersView]
class MembersRoute extends _i5.PageRouteInfo<void> {
  const MembersRoute()
      : super(
          MembersRoute.name,
          path: 'members-view',
        );

  static const String name = 'MembersRoute';
}

/// generated route for
/// [_i4.ContactView]
class ContactRoute extends _i5.PageRouteInfo<void> {
  const ContactRoute()
      : super(
          ContactRoute.name,
          path: 'contact-view',
        );

  static const String name = 'ContactRoute';
}

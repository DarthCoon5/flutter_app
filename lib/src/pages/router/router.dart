import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/home_page.dart';
import 'package:flutter_app/src/pages/navigator/navigator_list_page.dart';
import 'routes.dart';

export 'router_delegate.dart';
export 'router_info_parser.dart';
export 'router_delegate.dart';
export 'routes.dart';

class Router {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case navigatorListRoute:
        return MaterialPageRoute(builder: (_) => const NavigatorListPage());
  }
}
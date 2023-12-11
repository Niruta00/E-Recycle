import 'package:erecycle/core/routes/routes.dart';
import 'package:erecycle/view/home/home_view.dart';
import 'package:erecycle/view/login/login_view.dart';
import 'package:erecycle/view/login/sign_up.dart';
import 'package:erecycle/view/sort_trash/sort_trash.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginView());

      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => SignUpView());
         case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginView());
         case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeView());
           case Routes.sorttrash:
        return MaterialPageRoute(builder: (_) => SortTrash());

      default:
        return MaterialPageRoute(builder: (_) => LoginView());
    }
  }
}

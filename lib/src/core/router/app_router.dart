import '../../feature/auth/screens/welcome_view.dart';
import '../../feature/auth/screens/signin_view.dart';
import '../../feature/auth/screens/signup_view.dart';
import '../../view/view/home_view.dart';
import 'package:flutter/material.dart';
part 'app_route_animation.dart';
part 'app_routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteName routeName) {
    switch (routeName) {
      case RouteName.welcome:
        return FadeRoute(child: const WelcomeView());
      case RouteName.signup:
        return FadeRoute(child: const SignupView());
      case RouteName.signin:
        return FadeRoute(child: const SigninView());
      case RouteName.home:
        return FadeRoute(child: const HomeView());
    }
  }
}

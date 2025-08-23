import '../../exception/navigation_exception.dart';
import '../../feature/auth/screens/welcome_view.dart';
import '../../feature/auth/screens/signin_view.dart';
import '../../feature/auth/screens/signup_view.dart';
import '../../feature/home/home_view.dart';
import 'package:flutter/material.dart';
part 'navigation_animation.dart';
part 'route_name.dart';

abstract class INavigationManager {
  Future<void> pushToPage(RouteName route, {Object? arguments});
  void popPage();
}

class NavigationManager extends INavigationManager{
  NavigationManager._();
  static NavigationManager instance = NavigationManager._();
  final GlobalKey<NavigatorState> _navigationGlobalKey = GlobalKey();

  GlobalKey<NavigatorState> get navigationGlobalKey => _navigationGlobalKey;

  @override
  Future<void> pushToPage(RouteName route, {Object? arguments}) async {
    await _navigationGlobalKey.currentState?.pushNamed(
      route.withParaf,
      arguments: arguments,
    );
  }

  @override
  void popPage() {
    _navigationGlobalKey.currentState?.pop();
  }}

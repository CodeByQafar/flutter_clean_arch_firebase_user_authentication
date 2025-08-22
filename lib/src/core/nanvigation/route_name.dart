part of 'navigation_manager.dart';

enum RouteName {Home, Welcome, SignUp, SignIn}

extension RouteNameExtension on RouteName{
  String get withParaf=>'/$name';
}
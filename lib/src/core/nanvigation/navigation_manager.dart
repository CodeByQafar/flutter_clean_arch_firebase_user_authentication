import '../../feature/auth/screens/welcome_view.dart';
import '../../feature/auth/screens/signin_view.dart';
import '../../feature/auth/screens/signup_view.dart';
import '../../feature/home/home_view.dart';
import 'package:flutter/material.dart';
part 'route_animation.dart';
part 'route_name.dart';

class NavigationManager {

  static Map<String,Widget Function(BuildContext)> routes=
    {
      RouteName.Home.withParaf:(context) => HomeView(),
      RouteName.Welcome.withParaf:(context)=>WelcomeView(),
      RouteName.SignUp.withParaf :(context)=> SignUpView(),
      RouteName.SignIn.withParaf:(context)=> SignInView()
    };

}

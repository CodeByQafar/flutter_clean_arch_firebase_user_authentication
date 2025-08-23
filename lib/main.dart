import 'package:clean_arch_firebase_user_authentication/src/core/nanvigation/navigation_manager.dart';
import 'package:clean_arch_firebase_user_authentication/src/feature/auth/screens/signin_view.dart';
import 'package:clean_arch_firebase_user_authentication/src/feature/auth/screens/welcome_view.dart';
import 'package:clean_arch_firebase_user_authentication/src/feature/home/home_view.dart';
import 'package:clean_arch_firebase_user_authentication/src/core/init/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/feature/auth/screens/signup_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      key: NavigationManager.instance.navigationGlobalKey,
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme().darkTheme,
      theme: AppTheme().lightTheme,
      themeMode: ThemeMode.light,
      home: HomeView(),
      title: "wave",
    );
  }
}

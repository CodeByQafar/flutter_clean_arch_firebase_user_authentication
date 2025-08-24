import 'package:clean_arch_firebase_user_authentication/src/core/navigation/navigation_manager.dart';
import 'package:clean_arch_firebase_user_authentication/src/feature/home/home_view.dart';
import 'package:clean_arch_firebase_user_authentication/src/core/init/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(MainApp());
}

class MainApp extends StatelessWidget  {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationManager.instance.navigationGlobalKey,
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme().darkTheme,
      theme: AppTheme().lightTheme,
      themeMode: ThemeMode.light,
      home: HomeView(),
      title: "wave",
    );
  }
}

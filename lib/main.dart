import 'package:clean_arch_firebase_user_authentication/src/feature/home/home_view.dart';
import 'package:clean_arch_firebase_user_authentication/src/core/init/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "wave",
      theme: AppTheme().theme,
      home: HomeView(),
    );
  }
}

import '../widgets/containers/background_image.dart';
import 'package:flutter/material.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      body: BackgroundImage(child: Column(children: [])),
    );
  }
}

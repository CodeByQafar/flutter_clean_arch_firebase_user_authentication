import '../../../core/init/lang/languages.dart';
import '../../../core/router/navigation_manager.dart';
import '../widgets/buttons/signin_button.dart';
import '../widgets/buttons/signup_button.dart';
import '../widgets/containers/background_image.dart';
import '../widgets/texts/subtitle_text.dart';
import '../../../core/utility/padding.dart';
import '../widgets/texts/title_text.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: BackgroundImage(
        child: Column(
          children: [
            Padding(
              padding: Paddings.titleTopPadding,
              child: Column(children: [TitleText(), SubtitleText()]),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SignInButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).push(AppRouter.generateRoute(RouteName.signin));
                    },
                    text: Language.signIn,
                  ),
                ),
                Expanded(
                  child: SignUpButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).push(AppRouter.generateRoute(RouteName.signup));
                    },
                    text: Language.signUp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

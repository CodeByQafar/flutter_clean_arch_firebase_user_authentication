import '../../../core/init/lang/languages.dart';
import '../../../core/mixins/navigation_mixin.dart';
import '../../../core/navigation/navigation_manager.dart';
import '../widgets/buttons/signin_button.dart';
import '../widgets/buttons/signup_button.dart';
import '../widgets/containers/background_image.dart';
import '../widgets/texts/subtitle_text.dart';
import '../../../core/utils/padding.dart';
import '../widgets/texts/title_text.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget with NavigatornMixinStateless{
   WelcomeView({super.key});

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
                     router.pushToPage(RouteName.signIn);
                    },
                    text: Language.signIn,
                  ),
                ),
                Expanded(
                  child: SignUpButton(
                    onPressed: () {
                   router.pushToPage(RouteName.signUp);
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

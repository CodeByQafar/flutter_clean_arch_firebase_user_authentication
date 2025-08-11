import 'package:clean_arch_firebase_user_authentication/src/core/init/lang/languages.dart';

import '../../../core/utility/duration.dart';
import '../../../core/utility/border_radius.dart';
import '../../../core/utility/padding.dart';
import '../widgets/buttons/back_navigation_button.dart';
import '../widgets/containers/background_image.dart';
import 'package:flutter/material.dart';

import '../widgets/text_fields/password_text_field.dart';
import '../widgets/text_fields/text_field.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: BackNavigationButton(),
      ),
      body: BackgroundImage(
        child: Column(
          children: [
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiuses.backgroundContainerRadius,
              ),
              child: Column(
                children: [
                  SignTitleText(text: Language.signUpTitle),
                  Form(
                    child: Column(
                      children: [
                        CustomTextField(hintText: Language.fullNameHint),
                        CustomTextField(hintText: Language.emailHint),
                        CustomPasswordTextField(
                          hintText: Language.passwordHint,
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignTitleText extends StatelessWidget {
  const SignTitleText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.signTitlePadding,
      child: Text(text, style: Theme.of(context).textTheme.titleMedium),
    );
  }
}


import '../../../core/init/lang/languages.dart';
import '../../../core/utility/border_radius.dart';
import '../widgets/buttons/back_navigation_button.dart';
import '../widgets/buttons/sign_button.dart';
import '../widgets/buttons/sign_with_icon_buttons.dart';
import '../widgets/check_box_list_tiles/checkbox_list_tile.dart';
import '../widgets/containers/background_image.dart';
import 'package:flutter/material.dart';

import '../widgets/divider/divider_text.dart';
import '../widgets/text_fields/password_text_field.dart';
import '../widgets/text_fields/text_field.dart';
import '../widgets/texts/custom_text_with_button.dart';
import '../widgets/texts/sign_title.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: BackNavigationButton(),
      ),
      body: SingleChildScrollView(
        child: BackgroundImage(
          child: Column(
            children: [
              const Spacer(),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadiuses.backgroundContainerRadius,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SignTitleText(text: Language.signUpTitle),
                    Form(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomTextField(
                            hintText: Language.fullNameHint,
                            keyboardType: TextInputType.text,
                          ),
                          CustomTextField(
                            hintText: Language.emailHint,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          CustomPasswordTextField(
                            hintText: Language.passwordHint,
                          ),
                          CustomCheckboxListTile(
                            message: Language.personalDataUsage,
                            onChanged: (value) {
                              return value;
                            },
                          ),
                          SignButton(message: Language.signUp, onPressed: () {}),
                          DividerText(text: Language.signInWith),
                          SignWidthIcons(),
        
                          TextWidthButton(
                            text: Language.dontHaveAccount,
                            buttonText: Language.signUp,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

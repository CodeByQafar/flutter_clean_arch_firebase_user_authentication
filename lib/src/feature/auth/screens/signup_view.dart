import 'package:clean_arch_firebase_user_authentication/src/core/init/lang/languages.dart';

import '../../../core/utility/duration.dart';
import '../../../core/utility/border_radius.dart';
import '../../../core/utility/padding.dart';
import '../widgets/buttons/back_navigation_button.dart';
import '../widgets/buttons/sign_button.dart';
import '../widgets/check_box_list_tiles/checkbox_list_tile.dart';
import '../widgets/containers/background_image.dart';
import 'package:flutter/material.dart' hide Durations;

import '../widgets/divider/divider_text.dart';
import '../widgets/text_fields/password_text_field.dart';
import '../widgets/text_fields/text_field.dart';
import '../widgets/texts/sign_title.dart';

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
            Stack(
              children: [
                AnimatedPositioned(
                  duration: Durations.long,
                  curve: Curves.easeInOutExpo,

                  child: Container(
                    // duration: Durations.long,
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
                            SignButton(
                              message: Language.signUpButton,
                              onPressed: () {
                  
                              },
                            ),
                            DividerText(text: Language.signInButton),
                            SizedBox(height: 100),
                          ],
                        ),
                      ),
                    ],
                                      
                  ),
                                ),
                ),],
            ),
          ],
        ),
      ),
    );
  }

}

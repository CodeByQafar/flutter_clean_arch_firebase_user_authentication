import '../../../core/init/lang/languages.dart';
import '../../../core/init/theme/colors.dart';
import '../../../core/utility/border_radius.dart';
import '../../../core/utility/padding.dart';
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

class SignInView extends StatelessWidget {
  const SignInView({super.key});

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
                    SignTitleText(text: Language.signInTitle),
                    Form(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomTextField(
                            hintText: Language.emailHint,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          CustomPasswordTextField(
                            hintText: Language.passwordHint,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomCheckboxListTile(
                                message: Language.rememberMe,
                                onChanged: (value) {
                                  return value;
                                },
                              ),
                              Padding(
                                padding:Paddings.forgotPasswordButtonPadding,
                                child: TextButton(

                                  onPressed: () {},
                                  child: Text(
                                    Language.forgotPassword,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          color: AppColors.cyanBlueAzure,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SignButton(
                            message: Language.signIn,
                            onPressed: () {},
                          ),
                          DividerText(text: Language.signInWith),
                          SignWidthIcons(),

                          TextWidthButton(
                            text: Language.dontHaveAccount,
                            buttonText: Language.signIn,
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

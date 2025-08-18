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

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
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
                      SignButton(
                        message: Language.signUpButton,
                        onPressed: () {
                                  
                        },
                      ),
                      DividerText(text: Language.signInWith),
                     ConstrainedBox(
                       constraints: BoxConstraints(
                         maxWidth: 270,
                       ),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.facebook, color: Colors.blue,size: 40,)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.facebook, color: Colors.blue,size: 40,)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.facebook, color: Colors.blue,size: 40,)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.apple, color: Colors.black,size: 40,)),
                        ],
                       ),
                     ),
                      SizedBox(height: 50),
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

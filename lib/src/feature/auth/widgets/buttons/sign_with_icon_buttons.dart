import 'package:clean_arch_firebase_user_authentication/src/core/utility/icon_size.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utility/box_constraints.dart';

class SignWidthIcons extends StatelessWidget {
  SignWidthIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:BoxConstraintses. signWithIconButton,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
              child:SvgPicture.asset(
                Assets.icons.facebookIcon,
                width: IconSizes.signWithIconSize,
              )
          ),  InkWell(
              child:SvgPicture.asset(
                Assets.icons.xIcon,
                width: IconSizes.signWithIconSize,

              )
          ),  InkWell(
              child:SvgPicture.asset(
                Assets.icons.googleIcon,
                width: IconSizes.signWithIconSize,

              )
          ),  InkWell(
              child:SvgPicture.asset(
                Assets.icons.appleIcon,
                width: IconSizes.signWithIconSize,

              )
          ),

        ],
      ),
    );
  }
}

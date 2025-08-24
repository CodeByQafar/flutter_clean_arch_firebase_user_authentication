import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/box_constraints.dart';
import '../../../../core/utils/icon_size.dart';

class SignWidthIcons extends StatelessWidget {
  const SignWidthIcons({super.key});

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

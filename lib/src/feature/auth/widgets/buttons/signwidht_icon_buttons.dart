import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignWidthIcons extends StatelessWidget {
  SignWidthIcons({super.key});
  double width = 33;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 270),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
              child:SvgPicture.asset(
                Assets.icons.facebookIcon,
                width: width,

              )
          ),  InkWell(
              child:SvgPicture.asset(
                Assets.icons.xIcon,
                width: width,

              )
          ),  InkWell(
              child:SvgPicture.asset(
                Assets.icons.googleIcon,
                width: width,

              )
          ),  InkWell(
              child:SvgPicture.asset(
                Assets.icons.appleIcon,
                width: width,

              )
          ),

        ],
      ),
    );
  }
}

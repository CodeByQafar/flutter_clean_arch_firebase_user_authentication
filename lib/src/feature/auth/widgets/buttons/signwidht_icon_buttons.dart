import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';

class SignWidthIcons extends StatelessWidget {
  const SignWidthIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceAround,
     children: [
       InkWell(child: Image.asset(Assets.icons.facebookIcon.path),),
       InkWell(child: Image.asset(Assets.icons.xIcon.path),),
       InkWell(child: Image.asset(Assets.icons.appleIcon.path),),
       InkWell(child: Image.asset(Assets.icons.googleIcon.path),),

     ],
    );
  }
}

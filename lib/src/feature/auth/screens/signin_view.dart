import 'package:flutter/cupertino.dart';

import '../../../core/utility/border_radius.dart';
import '../widgets/buttons/back_navigation_button.dart';
import '../widgets/containers/background_image.dart';
import 'package:flutter/material.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

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
              child: Column(children: []),
            ),
          ],
        ),
      ),
    );
  }
}

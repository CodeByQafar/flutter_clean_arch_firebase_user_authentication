import 'package:flutter/widgets.dart';

import '../../../../../gen/assets.gen.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.background.path),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}

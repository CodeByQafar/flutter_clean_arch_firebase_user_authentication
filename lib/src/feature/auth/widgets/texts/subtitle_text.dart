import '../../../../core/init/lang/languages.dart';
import '../../../../core/utils/padding.dart';
import 'package:flutter/material.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.subtitleHorizontalPadding,
      child: Text(
        textAlign: TextAlign.center,
        Language.introductionScreenSubtitle,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}

import '../../../../core/init/theme/app_colors.dart';
import '../../../../core/init/lang/languages.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: Language.introductionScreenTitle[0],
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: AppColors.cyanBlueAzure),
          ),
          TextSpan(
            text: Language.introductionScreenTitle.substring(1),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}

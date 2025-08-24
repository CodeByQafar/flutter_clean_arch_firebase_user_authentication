import 'package:clean_arch_firebase_user_authentication/src/core/init/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/utility/padding.dart';

class TextWidthButton extends StatelessWidget {
  const TextWidthButton({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onPressed,
  });
  final String text;
  final String buttonText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.textWithButton,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: Theme.of(context).textTheme.titleSmall),
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(color: AppColors.cyanBlueAzure),
            ),
          ),
        ],
      ),
    );
  }
}

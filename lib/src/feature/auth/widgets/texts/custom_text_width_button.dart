import 'package:clean_arch_firebase_user_authentication/src/core/init/theme/colors.dart';
import 'package:flutter/material.dart';

class TextWidthButton extends StatelessWidget {
  TextWidthButton({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onPressed,
  });
  String text;
  String buttonText;
  VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:10,bottom: 50),
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

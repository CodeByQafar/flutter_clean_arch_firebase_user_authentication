import '../../../../core/init/theme/colors.dart';
import '../../../../core/utils/border_radius.dart';
import '../../../../core/utils/padding.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key, required this.text, required this.onPressed});
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        padding: Paddings.signButtonPadding,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadiuses.signUpButtonRadius,
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

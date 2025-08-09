import '../../../../core/utility/border_radius.dart';
import '../../../../core/utility/padding.dart';
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
          color: Colors.white,
          borderRadius: BorderRadiuses.signUpButtonRadius,
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

import '../../../../core/utility/padding.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.text, required this.onPressed});
  final Function onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Padding(
        padding: Paddings.signButtonPadding,
        child: Center(
          child: Text(text, style: Theme.of(context).textTheme.displayMedium),
        ),
      ),
    );
  }
}

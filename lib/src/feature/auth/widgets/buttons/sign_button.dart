import 'package:flutter/material.dart';

import '../../../../core/utility/box_constraints.dart';
import '../../../../core/utility/padding.dart';

class SignButton extends StatelessWidget {
  const SignButton({super.key, required this.message, required this.onPressed});
  final VoidCallback onPressed;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.expandSignButtonPadding,
      child: ConstrainedBox(
        constraints: BoxConstraintses.expandSignButton,
        child: FilledButton(
          
          onPressed: onPressed,
          style: FilledButton.styleFrom(
            elevation: 0.0,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          child: Text(message, style: Theme.of(context).textTheme.bodyLarge),
        ),
      ),
    );
  }
}

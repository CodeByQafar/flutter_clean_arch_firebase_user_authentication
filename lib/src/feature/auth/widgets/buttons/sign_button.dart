import 'package:flutter/material.dart';

import '../../../../core/utils/border_radius.dart';
import '../../../../core/utils/box_constraints.dart';
import '../../../../core/utils/padding.dart';

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
            shape:BorderRadiuses.signBUttonRadius,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          child: Text(message, style: Theme.of(context).textTheme.bodyLarge),
        ),
      ),
    );
  }
}

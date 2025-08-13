import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  const SignButton({super.key, required this.message, required this.onPressed});
  final VoidCallback onPressed;
  final String message;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(message, style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}

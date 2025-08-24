import 'package:flutter/material.dart';

import '../../../../core/utils/padding.dart';

class SignTitleText extends StatelessWidget {
  const SignTitleText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.signTitlePadding,
      child: Text(text, style: Theme.of(context).textTheme.titleMedium),
    );
  }
}

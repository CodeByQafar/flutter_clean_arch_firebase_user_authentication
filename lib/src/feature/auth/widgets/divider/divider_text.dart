
import 'package:flutter/material.dart';

import '../../../../core/utility/padding.dart';

class DividerText extends StatelessWidget {
  const DividerText({
    super.key,required this.text
  });
final String text;
final double indent=12;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.dividerTextPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              endIndent: indent,
              color: Theme.of(context).dividerColor,
            ),
          ),
          Text(text,style: Theme.of(context).textTheme.titleSmall),
          Expanded(
            child: Divider(
              indent: indent,
              color: Theme.of(context).dividerColor,
            ),
          ),
        ],
      ),
    );
  }
}


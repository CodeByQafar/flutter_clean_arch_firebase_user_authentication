
import 'package:flutter/material.dart';

import '../../../../core/utility/padding.dart';

class DividerText extends StatelessWidget {
  const DividerText({
    super.key,required this.text
  });
final String  text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.textFieldPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              endIndent: 12,
              color: Theme.of(context).dividerColor,
            ),
          ),
          Text(text,style: Theme.of(context).textTheme.titleSmall),
          Expanded(
            child: Divider(
              indent: 12,
              color: Theme.of(context).dividerColor,
            ),
          ),
        ],
      ),
    );
  }
}


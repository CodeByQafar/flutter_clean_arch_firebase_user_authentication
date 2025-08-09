import '../../../../core/utility/padding.dart';
import '../../../../core/init/lang/languages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackNavigationButton extends StatelessWidget {
  const BackNavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(CupertinoIcons.back, color: Colors.white),
          Padding(
            padding: Paddings.backTextPadding,
            child: Text(
              Language.backButton,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}

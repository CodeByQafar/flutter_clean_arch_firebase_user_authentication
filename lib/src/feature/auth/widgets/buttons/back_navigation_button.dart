
import '../../../../core/init/theme/colors.dart';
import '../../../../core/mixins/navigation_mixin.dart';
import '../../../../core/utility/padding.dart';
import '../../../../core/init/lang/languages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackNavigationButton extends StatelessWidget with NavigatornMixinStateless {
  const BackNavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => router.popPage(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(CupertinoIcons.back, color: AppColors.white),
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

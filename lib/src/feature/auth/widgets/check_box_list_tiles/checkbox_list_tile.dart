import 'package:flutter/material.dart';

import '../../../../core/init/theme/colors.dart';
import '../../../../core/utility/padding.dart';

class CustomCheckboxListTile extends StatefulWidget {
  CustomCheckboxListTile({
    super.key,
    required this.message,
    required this.onChanged,
  });
  final String message;
  final bool Function(bool isChecked) onChanged;

  @override
  State<CustomCheckboxListTile> createState() => _CustomCheckboxListTileState();
}

class _CustomCheckboxListTileState extends State<CustomCheckboxListTile> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.checkboxListTilePadding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(

            value: isChecked,
            checkColor: Colors.white,
            activeColor: AppColors.cyanBlueAzure,
            onChanged: (value) {
              setState(() {
                isChecked = value ?? false;
              });
              widget.onChanged.call(value ?? false);
            },
          ),
          Text(
            widget.message,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}

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
      child: CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(
          widget.message,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        checkColor: Colors.white,
        activeColor: AppColors.cyanBlueAzure,
        contentPadding: EdgeInsets.zero,

        value: isChecked,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        onChanged: (value) {
          setState(() {
            isChecked = !isChecked;
          });
          widget.onChanged.call(value ?? isChecked);
        },
      ),
    );
  }
}

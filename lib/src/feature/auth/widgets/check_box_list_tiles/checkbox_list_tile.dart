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
   VisualDensity visualDensity= VisualDensity(vertical: -4, horizontal: -4);
  void checkStatusChange() {
    setState(() {
      isChecked = !isChecked;
    });
    widget.onChanged.call(isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.checkboxListTilePadding,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            visualDensity: visualDensity,
            value: isChecked,
            checkColor: Colors.white,
            activeColor: AppColors.cyanBlueAzure,
            onChanged: (value) => checkStatusChange(),
          ),
          InkWell(
            onTap: () => checkStatusChange(),
            child: Text(
              widget.message,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}

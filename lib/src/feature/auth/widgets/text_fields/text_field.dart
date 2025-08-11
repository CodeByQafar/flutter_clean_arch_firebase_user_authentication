import 'package:flutter/material.dart' hide Durations;

import '../../../../core/utility/duration.dart';
import '../../../../core/utility/border_radius.dart';
import '../../../../core/utility/padding.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final double cursorHeight = 24.0;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.textFieldPadding,
      child: TextField(
        cursorHeight: cursorHeight,
        cursorColor: Theme.of(context).primaryColor,
        autocorrect: true,
        onChanged: (value) {},

        scrollPhysics: BouncingScrollPhysics(),
        textInputAction: TextInputAction.next,
        style: Theme.of(context).textTheme.bodyMedium,
        decoration: InputDecoration(
          contentPadding: Paddings.textFieldContentPadding,
          fillColor: Theme.of(context).primaryColor,
          focusColor: Theme.of(context).primaryColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            borderRadius: BorderRadiuses.textfieldRadius,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            borderRadius: BorderRadiuses.textfieldRadius,
          ),
          hintFadeDuration: Durations.long,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart' hide Durations;

import '../../../../core/utility/duration.dart';
import '../../../../core/utility/border_radius.dart';
import '../../../../core/utility/icon_size.dart';
import '../../../../core/utility/padding.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({super.key, required this.hintText});
  final String hintText;

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField>
    with TickerProviderStateMixin {
  final double cursorHeight = 24.0;
  bool isVisible = false;

  CrossFadeState crossFadeState() {
    return isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond;
  }

  void changeVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.textFieldPadding,
      child: TextField(
        cursorHeight: cursorHeight,
        cursorColor: Theme.of(context).primaryColor,
        autocorrect: true,
        onChanged: (value) {},
        style: Theme.of(context).textTheme.bodyMedium,
        scrollPhysics: BouncingScrollPhysics(),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.next,
        obscureText: !isVisible,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: Paddings.textFieldIconPadding,
            child: AnimatedCrossFade(
              alignment: Alignment.centerLeft,
              crossFadeState: crossFadeState(),
              firstChild: _iconButton(context, Icons.visibility_off),
              secondChild: _iconButton(context, Icons.visibility),

              duration: Durations.medium,
            ),
          ),

          contentPadding: Paddings.textFieldContentPadding,
          fillColor: Theme.of(context).primaryColor,
          focusColor: Theme.of(context).colorScheme.primary,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            borderRadius: BorderRadiuses.textfieldRadius,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            borderRadius: BorderRadiuses.textfieldRadius,
          ),
          hintFadeDuration: Durations.long,
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }

  IconButton _iconButton(BuildContext context, IconData icon) {
    return IconButton(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      icon: Icon(
        icon,
        size: IconSizes.textFieldIconSize,
        color: Theme.of(context).colorScheme.onSecondary,
      ),
      onPressed: changeVisibility,
    );
  }
}

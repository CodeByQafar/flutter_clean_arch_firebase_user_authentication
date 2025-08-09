import 'package:flutter/material.dart' hide Durations;

import '../../../../core/utility/duration.dart';
import '../../../../core/utility/border_radius.dart';
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

  GlobalKey key = GlobalKey();
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

        scrollPhysics: BouncingScrollPhysics(),
        textInputAction: TextInputAction.next,
        obscureText: !isVisible,
        decoration: InputDecoration(
          suffix: AnimatedCrossFade(
            crossFadeState: crossFadeState(),
            firstChild: IconButton(
              icon: Icon(
                Icons.visibility_off,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              onPressed: changeVisibility,
            ),
            secondChild: IconButton(
              icon: Icon(
                Icons.visibility,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              onPressed: changeVisibility,
            ),

            duration: Durations.medium,
          ),

          contentPadding: Paddings.textFieldContentPadding,
          fillColor: Theme.of(context).primaryColor,
          focusColor: Theme.of(context).colorScheme.primary,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            borderRadius: BorderRadiuses.textfieldRadius,
          ),
          hintFadeDuration: Durations.long,
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

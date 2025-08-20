import 'package:flutter/material.dart';

class Paddings {
  //Welcome screen paddings
  static final EdgeInsets titleTopPadding = EdgeInsets.only(top: 160);
  static final EdgeInsets subtitleHorizontalPadding = EdgeInsets.symmetric(
    horizontal: 80,
    vertical: 0,
  );
  static final EdgeInsets signButtonPadding = EdgeInsets.symmetric(
    vertical: 10.0,
  );

  //Sign screen paddings (signin and signup paddings are the same)
  static final EdgeInsets backTextPadding = EdgeInsets.only(left: 8.0);
  static final EdgeInsets signTitlePadding = EdgeInsets.symmetric(vertical: 15);
  static final EdgeInsets textFieldPadding = EdgeInsets.symmetric(
    horizontal: 35.0,
    vertical: 10.0,
  );
  static final EdgeInsets textFieldContentPadding = EdgeInsets.only(
    left: 16.0,
    right: 16.0,
    top: 12.0,
    bottom: 12.0,
  );
  static final EdgeInsets textFieldIconPadding = EdgeInsets.only(right: 8.0);
  static final EdgeInsets checkboxListTilePadding = EdgeInsets.symmetric(horizontal: 0.0);
  static final EdgeInsets expandSignButtonPadding =  EdgeInsets.symmetric(  horizontal: 25.0,
    vertical: 10.0,);
}

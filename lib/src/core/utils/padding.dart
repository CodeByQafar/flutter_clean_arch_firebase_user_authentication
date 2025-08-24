import 'package:flutter/material.dart';

class Paddings {
  //Welcome screen paddings
  static final EdgeInsets titleTopPadding = EdgeInsets.only(top: 160);
  static final EdgeInsets subtitleHorizontalPadding = EdgeInsets.symmetric(
    horizontal: 80,
    vertical: 0,
  );
  static final EdgeInsets signButtonPadding = EdgeInsets.symmetric(
    vertical: 17,
  );

  //Sign screen paddings (signin and signup paddings are the same)
  static final EdgeInsets backTextPadding = EdgeInsets.only(left: 8.0);
  static final EdgeInsets signTitlePadding = EdgeInsets.symmetric(vertical: 15);
  static final EdgeInsets textFieldPadding = EdgeInsets.symmetric(
    horizontal: 35.0,
    vertical: 12.0,
  );
  static final EdgeInsets textFieldContentPadding = EdgeInsets.symmetric(
    vertical: 12,
    horizontal: 16,
  );
  static final EdgeInsets textFieldIconPadding = EdgeInsets.only(right: 8.0);

  static final EdgeInsets checkboxListTilePadding = EdgeInsets.only(
    left: 37.0,
    top: 8,
    bottom: 20,
  );
  static final EdgeInsets forgotPasswordButtonPadding= EdgeInsets.only(
    right: 33.0,
    top: 8,
    bottom: 20,
  );
  static final EdgeInsets expandSignButtonPadding = EdgeInsets.symmetric(
    horizontal: 25.0,
    vertical: 10.0,
  );
  static final EdgeInsets dividerTextPadding = EdgeInsets.only(
    left: 30,
    right: 30,
    top: 17,
    bottom: 22,
  );
  static final EdgeInsets textWithButton= EdgeInsets.only(top:17,bottom: 20);
}

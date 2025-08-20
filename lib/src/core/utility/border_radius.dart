import 'package:flutter/material.dart';

class BorderRadiuses {
  // Welcome view border radiuses
  static final BorderRadius signUpButtonRadius = BorderRadius.only(
    topLeft: Radius.circular(33),
  );

  //Sign view border radiuses
  static final BorderRadius backgroundContainerRadius = BorderRadius.only(
    topRight: Radius.circular(66),
    topLeft: Radius.circular(66),
  );
  static final BorderRadius textfieldRadius = BorderRadius.all(Radius.circular(34.0));
  static final RoundedRectangleBorder signBUttonRadius= RoundedRectangleBorder (
      borderRadius: BorderRadius.circular(12)
  );
}

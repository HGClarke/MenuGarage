import 'package:flutter/material.dart';

class Utils {
  static showSnackBar(BuildContext context, SnackBar snackBar) {
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

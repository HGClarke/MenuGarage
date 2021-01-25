import 'package:flutter/material.dart';
import 'package:menu_garage/pages/home.dart';

class Routes {
  static const home = "/";

  static getRoutes(BuildContext context) {
    return {home: (context) => HomePage()};
  }
}

import 'package:flutter/material.dart';
import 'package:menu_garage/provider/theme_changer.dart';
import 'package:menu_garage/routes/routes.dart';
import 'package:menu_garage/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // TODO: Implement Dark Mode
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeChanger>(
      builder: (context, theme, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        title: 'Menu Garage',
        initialRoute: Routes.home,
        routes: Routes.getRoutes(context),
        themeMode: theme.currentTheme,
      ),
    );
  }
}

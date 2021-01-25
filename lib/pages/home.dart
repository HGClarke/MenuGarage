import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:menu_garage/provider/theme_changer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeChanger = ThemeChanger.of(context);

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          actions: [
            IconButton(
              icon: Icon(themeChanger.isDarkMode
                  ? Icons.wb_sunny
                  : FontAwesomeIcons.moon),
              onPressed: () {
                themeChanger.switchTheme();
              },
            )
          ],
          floating: true,
          automaticallyImplyLeading: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Container(
              margin: EdgeInsets.only(
                right: 100,
              ),
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.bottomLeft,
              child: Text('Welcome to Menu Garage'),
            ),
          ),
          expandedHeight: 150,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              title: Text('Item #$index'),
            ),
            childCount: 10,
          ),
        )
      ],
    ));
  }
}

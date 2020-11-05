import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basicscreenpage/Widgets/navigationBar.dart';
import 'package:basicscreenpage/Screens/firstScreen.dart';


class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: NavigationBar(),
      ),
      backgroundColor: Colors.transparent,
      body: FirstScreen(),
    );
  }
}
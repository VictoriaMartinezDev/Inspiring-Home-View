import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basicscreenpage/Constants/resposiveLayout.dart';
import 'package:basicscreenpage/Widgets/registerBottom.dart';


class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: ResponsiveLayout.isSmallScreen(context) ? 10.0 : 30,top: 10.0),
                child: Image.asset(
                  'images/logo1.png',
                  width: 220,
                  height: 220,
                ),
              ),

              SizedBox(
                width: ResponsiveLayout.isSmallScreen(context) ? 10: 16,
              ),
            ],
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                (ResponsiveLayout.isSmallScreen(context) ? Container() : HomeBottom()),
                SizedBox(
                  width: 10,
                ),
                RegisterBottom(),
                SizedBox(width: 10,)
              ]
          )
        ],
      ),
    );
  }
}


class HomeBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        'Home',
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

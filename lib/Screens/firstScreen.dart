import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basicscreenpage/Constants/resposiveLayout.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background1.jpg'),
          fit: BoxFit.cover,
          colorFilter:
          ColorFilter.mode(Colors.white.withOpacity(0.2),
              BlendMode.color),
        ),
      ),
      child:
      Stack(
        fit: StackFit.expand,
        children: <Widget>[

          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .37,
            child:
            //svg
            Image.asset(
              'Images/Star2.png',
              scale: 1,
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.topLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: (ResponsiveLayout.isLargeScreen(context) ? 150 : 60),
                  top: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Programming Project',
                    style: TextStyle(
                      fontSize: (ResponsiveLayout.isLargeScreen(context) ? 50 : 30),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Ideas',
                    style: TextStyle(
                      fontSize: (ResponsiveLayout.isLargeScreen(context) ? 50 : 30),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 18,),
                  RichText(
                    text: TextSpan(
                      text: '... Inspiring',
                      style: TextStyle(
                        fontSize: (ResponsiveLayout.isLargeScreen(context) ? 25 : 18),
                        //fontWeight: FontWeight.bold,
                        color: Color(0xFF695874),
                      ),
                    ),
                  ),
                  SizedBox(height: 100,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 20),
                    child: ButtonTheme(
                      minWidth: (ResponsiveLayout.isLargeScreen(context) ? 130 : 70),
                      height: 50.0,
                      buttonColor: Color(0xFFf5b489),
                      child: RaisedButton(
                        onPressed: () {
//                          Navigator.push(
//                            context,
//                            MaterialPageRoute(builder: (context) => VideoPageView()),
//                          );
                        },
                        child: const Text(
                            'Show more',
                            style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.bold, color: Colors.white)
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(
          left: 0,
        ),
//                      width: 120,
        height: 45,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.green],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF6078ea).withOpacity(.3),
                offset: Offset(0, 8),
                blurRadius: 8,
              ),
            ]),
        child: Center(
          child: FlatButton(
//                          onPressed: () {
//                            Navigator.push(context,
//                                MaterialPageRoute(builder: (context) {
//                                  return CourseView();
//                                }));
//                          },
            child: Text(
              'Register your interest',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 1,
                fontFamily: 'Oswald',
              ),
            ),
          ),
        ),

      ),
    );
  }
}
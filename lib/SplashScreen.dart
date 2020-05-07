import 'dart:async';

import 'package:flutter/material.dart';
import 'package:network/LoginScreen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SecondscreenState createState() => _SecondscreenState();
}

class _SecondscreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 4), onloadingData);
  }

  onloadingData() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          // height: MediaQuery.of(context).size.height,
          //width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xff292929),
          ),
          child:Container(
            // height: MediaQuery.of(context).size.height/10,
            width: MediaQuery.of(context).size.width/2,
            child:  Image.asset("images/Untitled-2.png",),

          ),
        )
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
void dialogBoxUniversal(context,String image, String msg, onTap){
  showDialog(context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          backgroundColor: Colors.transparent,
          titlePadding: EdgeInsets.all(0),
          title: Container(
            height: 200,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    margin: EdgeInsets.only(top: 35),
                    padding: EdgeInsets.only(top: 35, left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(11)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('Are You sure',style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                        Text(msg,style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).pop(context);
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                child: Text('Cancel',style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                              ),
                            ),
                            GestureDetector(
                              onTap: onTap,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                child: Text('OK',style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: Image.asset('images/$image', height: 50,),
                  ),
                ),
              ],
            ),
          ),
        );
      }
  );
}
void dialogBoxWarning(context,String image, String msg,){
  showDialog(context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          backgroundColor: Colors.transparent,
          titlePadding: EdgeInsets.all(0),
          title: Container(
            height: 200,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    margin: EdgeInsets.only(top: 35),
                    padding: EdgeInsets.only(top: 35, left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(11)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        // Text('Are You sure',style: TextStyle(color: black, fontSize: 18, fontWeight: FontWeight.bold)),
                        Text(msg,textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                child: Text('OK',style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: Image.asset('images/$image.png', height: 50,),
                  ),
                ),
              ],
            ),
          ),
        );
      }
  );
}

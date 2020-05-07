import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:  Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff414141),
                    Color(0xff212121),
                  ]
              )
          ),


          

          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[

                    Expanded(
                      flex: 1,
                      child: Image.asset('images/drawer_icon.png',scale: 5,),
                    ),

                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.only(left: 80,right: 80),
                          child: Text('Home',style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),),
                        )
                    ),

                    Expanded(
                      flex: 1,
                      child: Image.asset('images/circular_image.png',scale: 5,),
                    ),

                  ],
                )  )
            ],
          )
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);

}
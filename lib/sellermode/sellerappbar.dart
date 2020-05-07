import 'package:flutter/material.dart';
import 'package:network/approuteclass.dart';
import 'package:network/buyer/constants.dart';
import 'package:network/buyer/selleravator.dart';

class SellerAppBarClass extends PreferredSize {
  SellerAppBarClass(BuildContext context, drawer, keyScaf, title,)
      : super(
            preferredSize: Size.fromHeight(0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft : Radius.circular(20),bottomRight: Radius.circular(20.0)),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                       Color(0xff414141),
                        Color(0xff000000)
                      ]
                  )
              ),
              child: AppBar(
                elevation: 10,
                backgroundColor: Colors.transparent,
                leading: drawer
                    ? InkWell(
                        onTap: () {
                          keyScaf.currentState.openDrawer();
                        },
                        child: Image.asset(
                          'images/drawer_icon.png',
                          scale: 4,
                        ),
                      )
                    : Container(
                      margin: EdgeInsets.only(left: 30),
                      // width: MediaQuery.of(context).size.width*.5,
                      // height: MediaQuery.of(context).size.height*.08,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, 
                        
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          radius:15,
                          backgroundColor: Colors.pink,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: whiteColor,
                            size:13,
                          ),
                        ),
                      ),
                    ),
                title: Text(
                  '$title',
                  style:
                      TextStyle(color: whiteColor, fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                centerTitle: true,
                actions: <Widget>[
                  ClipRRect(
                      borderRadius: new BorderRadius.circular(300.0),
                      child: Container(
                          height: 30,
                          width: 50,
                          margin: EdgeInsets.only(right: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 60.0,
                            child:
                             ClipRRect(
                                borderRadius: new BorderRadius.circular(300.0),
                                child: InkWell(onTap: (){
                                  AppRoutes.push(context, Logout());
                                },
                                child:    Image.asset(
                                        "images/circular_image.png",
                                      )
                                )
                             
                                    ),
                          ))),
                ],
              ),
            ));
}

/*class DrawerPage extends PreferredSize {
  DrawerPage(BuildContext context)
      : super(
            preferredSize: Size.fromHeight(0),
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * .7,
                color: whiteColor,
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 15,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      child: Column(
                        children: <Widget>[
                          CircularProfileAvatar(
                            User.userData.userPic, //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                            radius: 40, // sets radius, default 50.0
                            backgroundColor: Colors.transparent, // sets background color, default Colors.white// sets border, default 0.0
                             // sets initials text, set your own style, default Text('')
                            elevation: 5.0, // sets elevation (shadow of the profile picture), default value is 0.0
                            foregroundColor: Colors.brown.withOpacity(0.5), //sets foreground colour, it works if showInitialTextAbovePicture = true , default Colors.transparent
                            cacheImage: true, // allow widget to cache image against provided url
                            onTap: () {

                            }, // sets on tap
                             // setting it true will show initials text above profile picture, default false
                          ),
                          SizedBox(),


                          Container(
                            child: Text(
                              '${User.userData.userName}',
                              style: TextStyle(fontSize: 20,color: wordColor),
                            ),
                          ),
                          Container(
                            child: Text(
                              '${User.userData.userEmail}',
                              style: TextStyle(fontSize: 15,color: wordColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: ListView(
                          children: <Widget>[

                            InkWell(
                              onTap: () {},
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                      width: 20,
                                      margin:
                                          EdgeInsets.only(left: 20, right: 20),
                                      child:
                                          Image.asset('datafolder/homee.png'),
                                    ),
                                    Text(
                                      'Home',
                                      style: TextStyle(
                                          color: wordColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                      width: 20,
                                      margin: EdgeInsets.only(
                                          left: 20,
                                          right: 20,
                                          top: 10,
                                          bottom: 10),
                                      child:
                                          Image.asset('datafolder/aboutus.png'),
                                    ),
                                    Text(
                                      'About Us',
                                      style: TextStyle(
                                          color: wordColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                FirebaseAuth.instance.signOut();
                                AppRoutes.makeFirst(context, LogInClass());
                              },
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                      width: 20,
                                      margin: EdgeInsets.only(
                                          left: 20,
                                          right: 20,
                                          top: 10,
                                          bottom: 10),
                                      child:
                                          Image.asset('datafolder/logout.png'),
                                    ),
                                    Text(
                                      'Log out',
                                      style: TextStyle(
                                          color: wordColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ))));
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarDefault extends StatelessWidget {
  AppBarDefault({
    @required this.context,
    @required  this.char,
    @required this.leading,
    @required this.title,
    @required this.drawer,
    this.keyScaf,
    this.heading,
    @required this.actioon,
  }){

  }
  final BuildContext context;
  final bool leading;
  final bool drawer;
  final bool title;
  final String heading;
  final bool actioon;
  final GlobalKey <ScaffoldState>keyScaf;
  final int char;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22)),
            boxShadow: [new BoxShadow(
              color:Color(0xff726E6E),
              blurRadius: 10.0,
            ),
            ],
            color:Color(0xff414141)),

        margin: EdgeInsets.only(bottom: 0),
        child: AppBar(

          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
          backgroundColor: Colors.transparent,
          leading: leading
              ? drawer
              ? InkWell(
              onTap: () {
                keyScaf.currentState.openDrawer();
              },
              child: Image.asset(
                'images/drawer_icon.png',
                scale: 5,
              ))
              : InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          )
              : Container(
            height: 1,
            width: 1,
          ),
          title: title
              ? Icon(
            Icons.arrow_back,
            color: Colors.white,
          )
              : Text(
            '$heading',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          centerTitle: true,
          actions: actioon
              ? <Widget>[
            Container(
                margin: EdgeInsets.only(right: 10),
                child: InkWell(
                    onTap: () {
                      //AppRoutes.push(context, CardNavigation());
//                      AppRoutes.push(context, customerNotification());
                    },
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )))
          ]
              : null,
        ),
      ),
    );
  }


}
Widget admin(context){
  return ListView(
    children: <Widget>[
      Container(
          height: MediaQuery.of(context).size.height / 20,
          child: ListTile(
              onTap: () {
//                AppRoutes.push(context, Dashboarad());
              },
              title: Text(
                'Home',
                style: TextStyle(
                    color:Colors.black,
                    fontSize: 16),
              ),
              leading: Padding(
                padding: EdgeInsets.only(left: 7,top: 7),
                child: Image.asset(
                  'images/homeicon.png',scale: 4,
                ),
              )
          )),
      Container(
          margin: EdgeInsets.only(top: 6),
          height: MediaQuery.of(context).size.height / 20,
          child: ListTile(
              onTap: () {
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageProducrts()));
//                AppRoutes.push(context, MyServices());
              },
              title: Text(
                'My Services',
                style: TextStyle(
                  color:Colors.black,
                  fontSize: 15,),
              ),
              leading: Padding(
                padding: EdgeInsets.only(left: 7,top: 7),
                child: Image.asset(
                  'images/services.png',scale: 3,
                ),
              )
          )),
      Container(
          margin: EdgeInsets.only(top: 8),
          height: MediaQuery.of(context).size.height / 20,
          child: ListTile(
              onTap: () {
//                AppRoutes.push(context, ClientList());
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerList()));
              },
              title: Text(
                'Client List',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,),
              ),
              leading: Padding(
                padding: EdgeInsets.only(left: 7,top: 7),
                child: Image.asset(
                  'images/clientlist.png',scale: 4,
                ),
              )
          )),
      Container(
          height: MediaQuery.of(context).size.height / 20,
          margin: EdgeInsets.only(top: 8),
          child: ListTile(
              onTap: () {
//                AppRoutes.push(context, PendingRequest());
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Driverdetail()));
              },
              title: Text(
                'Client approval request',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,),
              ),
              leading: Padding(
                padding: EdgeInsets.only(left: 7,top: 7),
                child: Image.asset(
                  'images/clientlist.png',scale: 4,
                ),
              )
          )),
      Container(
          margin: EdgeInsets.only(top: 8),
          height: MediaQuery.of(context).size.height / 20,
          child: ListTile(
              onTap: () {
//                AppRoutes.push(context, RecurrentAppointment());
              },
              title: Text(
                'Recurrent  appointments',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14),
              ),
              leading: Padding(
                padding: EdgeInsets.only(left: 7,top: 7),
                child:  Image.asset(
                  'images/recurrentappointment.png',scale: 4,
                ),
              )
          )),
      Container(
          margin: EdgeInsets.only(top: 8),
          height: MediaQuery.of(context).size.height / 20,
          child: ListTile(
              onTap: () {
//                AppRoutes.push(context, Report());
              },
              title: Text(
                'Reports',
                style: TextStyle(
                    color:Colors.black,
                    fontSize: 15),
              ),
              leading: Padding(
                padding: EdgeInsets.only(left: 7,top: 7),
                child: Image.asset(
                  'images/reports.png',scale: 3,
                ),
              )
          )),
      Container(
          margin: EdgeInsets.only(top: 8),
          height: MediaQuery.of(context).size.height / 20,
          child: ListTile(
              onTap: () {
//                AppRoutes.push(context, MessageCentre());
              },
              title: Text(
                'Message Centre',
                style: TextStyle(
                  color:Colors.black,
                  fontSize: 15,
                ),
              ),
              leading: Padding(
                padding: EdgeInsets.only(top: 7,left: 5),
                child: Image.asset(
                  'images/messagecentre.png',scale: 3,
                ),
              )
          )
      ),
      Container(
          margin: EdgeInsets.only(top: 8),
          height: MediaQuery.of(context).size.height / 20,
          child: ListTile(
              onTap: () {
//                AppRoutes.push(context, CharacterSelect());
              },
              title: Text(
                'Log out',
                style: TextStyle(
                    color:Colors.black,
                    fontSize: 15),
              ),
              leading: Padding(
                padding: EdgeInsets.only(left: 7,top: 7),
                child: Image.asset(
                  'images/logout.png',scale: 3,
                ),
              )
          )
      ),

    ],
  );
}


Widget user(context,int char){
  return ListView(children: <Widget>[
    Container(
        height: MediaQuery.of(context).size.height / 20,
        child: ListTile(
            onTap: () {
//              AppRoutes.push(context, CustomerDashboard());
            },
            title: Text(
              'Home',
              style: TextStyle(
                color: Color(
                  0xff000000,
                ),
                fontSize: 16,),
            ),
            leading:Padding(
              padding: EdgeInsets.only(left: 7,top: 3),
              child:  Image.asset(
                'images/homeicon.png',scale: 4,
              ),
            )
        )),
    Container(
        height: MediaQuery.of(context).size.height / 20,
        child: ListTile(
            onTap: () {
//              AppRoutes.push(context, MyProfile());
            },
            title: Text(
              'Profile',
              style: TextStyle(
                color: Color(
                  0xff000000,
                ),
                fontSize: 16,),
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 7,top: 6),
              child: Image.asset(
                'images/profile.png',scale: 3,
              ),
            )
        )),
    GestureDetector(
      child: Container(
          height: MediaQuery.of(context).size.height / 20,
          child: ListTile(
              onTap: () {
//                AppRoutes.push(context, AboutUs());
              },
              title: Text(
                'About us ',
                style: TextStyle(
                  color: Color(
                    0xff000000,
                  ),
                  fontSize: 16,),
              ),
              leading: Padding(
                padding: EdgeInsets.only(left: 7,top: 6),
                child: Image.asset(
                  'images/aboutus.png',scale:  4,
                  // color: skin,
                ),
              )
          )),
      onTap: (){
//        Navigator.push(
//            context, MaterialPageRoute(
//            builder: (context)=> AboutUs()
//        )
//        );
      },
    ),
    Container(
      height: MediaQuery.of(context).size.height / 20,
      child: ListTile(
          onTap: () {
//            AppRoutes.push(context, CharacterSelect());

          },
          title: Text(
            'Log out',
            style: TextStyle(
                color: Color(
                  0xff000000,
                ),
                fontSize: 16),
          ),
          leading: Padding(
              padding: EdgeInsets.only(left: 7,top: 5),
              child: Image.asset(
                'images/logout.png',scale: 3,
                // color: skin,
              ))),
    )
  ],);
}

class DrawerPage extends PreferredSize {
  DrawerPage(BuildContext context, int char)
      : super(
      preferredSize: Size.fromHeight(0),
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * .7,
          color: Color(0xffFFFFFF),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 50,
                        child: Image.asset('images/ada.png',fit: BoxFit.cover),
                      ),
                      Container(
                        child: Text("Barber Edge",style:TextStyle(fontSize: 24)),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child:char==1?admin(context):user(context,2))
              ],
            ),
          )));
}
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:network/sellermode/blockuserpopup.dart';
import 'package:network/sellermode/chatcomunitypop.dart';
import 'package:network/sellermode/groupchat.dart';
import 'package:network/sellermode/sellerdrawer.dart';
import 'package:network/sellermode/sellerinstantmessage.dart';

import '../approuteclass.dart';

class SellerConversion extends StatefulWidget {
  @override
  _SellerConversionState createState() => _SellerConversionState();
}

class _SellerConversionState extends State<SellerConversion> {
  final GlobalKey<ScaffoldState> _sellerscaffoldKey =
      new GlobalKey<ScaffoldState>();
  String name = '';
  var select = ['Community', 'Friend Request'];
  var currentselectitem = ['Community'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:Row(
            mainAxisAlignment: MainAxisAlignment.end, 
            children: <Widget>[
              InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient:LinearGradient(colors: [
                        Color(0xffFBB85D),Color(0xffF4A665),Color(0xffCC3B97)
                      ])
                    ),
                  
height: MediaQuery.of(context).size.height/14.5,
width:MediaQuery.of(context).size.width/7,
                      margin: EdgeInsets.only(bottom: 0,right:10),
                      child:Icon(Icons.add,
                      color:Colors.white)
                      ))
            ],
          ),
        key: _sellerscaffoldKey,
        drawer: SellerDrawer(),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32)),
              color: Color(0xff414141),
            ),
            height: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 35, left: 20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                _sellerscaffoldKey.currentState.openDrawer();
                              },
                              child: Image.asset(
                                'images/drawer_icon.png',
                                scale: 4,
                              ),
                            ),
                            Text(
                              'CHAT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize:18),
                            ),
                            popupmenu()
                          ],
                        ),
                        Container(
                            margin:
                                EdgeInsets.only(left: 10, top: 05, bottom: 3),
                            width: MediaQuery.of(context).size.width/1.4,
                            height: MediaQuery.of(context).size.height * .05,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(08)),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5.9,
                                      spreadRadius: 1.0,
                                      color: Colors.grey)
                                ]),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top:0, left: 20, right: 5),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top:4),
                                    border: InputBorder.none,
                                    hintText: 'SEARCH',
                                    hintStyle: TextStyle(
                                        color: Color(0xff29346E), fontSize: 12),
                                    suffixIcon: Image.asset(
                                      'images/search.png',
                                      scale: 6,
                                    )),
                              ),
                            ))
                      ],
                    )),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: 10),
            child: ListView.builder(
                itemCount: 9,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) => InkWell(
                    onTap: () {
                      AppRoutes.push(context, Sellerinstantmessage());
                    },
                    child: slideableaction(
                        index == 0
                            ? 'images/im1.png'
                            : index == 1
                                ? 'images/im2.png'
                                : index == 2
                                    ? 'images/im3.png'
                                    : index == 3
                                        ? 'images/im4.png'
                                        : index == 4
                                            ? 'images/im5.png'
                                            : 'images/im6.png',
                        index == 0
                            ? 'jane jallow'
                            : index == 1 ? 'jane jallow' : 'jane jallow',
                        index == 0
                            ? '10-01-2020'
                            : index == 1
                                ? '10-01-2020'
                                : index == 2
                                    ? '10-01-2020'
                                    : index == 3 ? '10-01-2020' : '10-01-2020',
                        index == 0 ? 1 : index == 1 ? 2 : index = 3,
                        index == 0
                            ? 'You are one of peters compressions plays,hldfnjdk jdb fdfdb fdsk nidbid uh?'
                            : index == 1
                                ? 'Both of them'
                                : 'You are one of peters compressions plays,huh? have of babies',
                        index))),
          ),
       
        ])));
  }

  Widget popupmenu() {
    return PopupMenuButton(
      padding: EdgeInsets.all(0),
      //  offset: Offset.fromDirection(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      captureInheritedThemes: true,
      color: Colors.white,
      itemBuilder: (context) {
        var list = List<PopupMenuEntry<Object>>();
        list.add(
          PopupMenuItem(
            height: 25,
            child: GestureDetector(
              child: Text(
                "Group chat",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                AppRoutes.pop(context);
                AppRoutes.push(context, Groupchat());
              },
            ),
            value: 1,
          ),
        );
        list.add(
          PopupMenuItem(
            height: 25,
            child: GestureDetector(
              child: Text(
                "Community chat",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                AppRoutes.pop(context);

                AppRoutes.push(context, Communitychatpopup());
              },
            ),
            value: 2,
          ),
        );
        list.add(
          PopupMenuItem(
            height: 25,
            child: GestureDetector(
              child: Text(
                "Block User",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                AppRoutes.pop(context);
                AppRoutes.push(context, Blockuserpopup());
              },
            ),
            value: 3,
          ),
        );

        return list;
      },
      icon: Icon(
        Icons.more_vert,
        size: 20,
        color: Colors.pink,
      ),
    );
  }

  Widget slideableaction(String img, String name, String time, int msgnumber,
      String msg, int index) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10,
          margin: EdgeInsets.only(top: 5, left: 8, right: 5),
          child: Container(
              height: MediaQuery.of(context).size.height /7.6,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                    margin: EdgeInsets.only(right: 20, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '$time',
                          style: TextStyle(
                            fontSize:10,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left:10),
                    child: Row(
                     children: <Widget>[
                         CircleAvatar(
                          child: Image.asset('$img'),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left:9),
                                child: Text(
                                  '$name ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                     ],
                   ) ),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius:8,
                              backgroundColor: Colors.pink,
                              child: Text(
                                '$msgnumber',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 8),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Text(
                                  '$msg',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:12,
                                      color: Colors.grey),
                                ))
                          ],
                        )
                     
                ],
              ))
              ),
      actions: <Widget>[],
      secondaryActions: <Widget>[
        Card(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
          ),
          child: 
          Container(
            height: MediaQuery.of(context).size.height,
            width:MediaQuery.of(context).size.width,
            child:   IconSlideAction(
          color: Color(0xffFF9500),
          caption: 'Block User',
          foregroundColor: Colors.white,
          iconWidget: Image.asset(
            'images/blockuser.png',
            scale: 3,
          ),
          onTap: () => _showSnackBar(
            'Block User',
          ),
        ), 
          )
        ),
     
        SizedBox(
          width: 1,
        ),
        IconSlideAction(
          caption: 'Delete chat',
          foregroundColor: Colors.white,
          color: Color(0xffFF9500),
          iconWidget: Image.asset(
            'images/deletechat.png',
            scale: 3,
          ),
          onTap: () => _showSnackBar('Delete'),
        ),
      ],
    );
  }

  Widget _showSnackBar(
    String txt,
  ) {
    return Column(
      children: <Widget>[
        Text(
          '$txt',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
//   Widget doticon(){
//   return Listti
// }

}

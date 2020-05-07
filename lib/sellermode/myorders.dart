import 'package:flutter/material.dart';
import 'package:network/approuteclass.dart';
import 'package:network/buyer/constants.dart';
import 'package:network/sellermode/sellerappbar.dart';
import 'package:network/sellermode/sellerdrawer.dart';

class Myorders extends StatefulWidget {
  @override
  _MyordersState createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
  final GlobalKey<ScaffoldState> _sellerscaffoldKey =
      new GlobalKey<ScaffoldState>();
  int val = 1;
  bool opac = false;
  bool opac1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey,
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,

      key: _sellerscaffoldKey,
      // drawer: DrawerPage(context),
      bottomSheet:
          val == 1 ? activebottomsheet(context) : completedbottomseet(context),

      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90), // here the desired height
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: SellerAppBarClass(
                context, false, _sellerscaffoldKey, 'MY ORDERS'),
          )),
      drawer: SellerDrawer(),
      body: Opacity(

          opacity: val==1? ! opac?
           1 : .3: !opac1?1:.3,
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              Container(height: 90,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: 20,horizontal: MediaQuery.of(context).size.width/5
              ),
              decoration: BoxDecoration(
                border: 
                Border(
                      bottom: BorderSide(color: Colors.grey, width: 5),
                )
              ),
               child: upperpart()),
              val == 1
                  ? activeorderaction()
                  : val == 2 ? completedorderaction() : Container(),
            ],
          ))),
    );
  }

  Widget completedbottomseet(BuildContext context) {
    return Opacity(
      opacity: opac1 ? 1 : 0,
      child: Card(
          elevation: 20,
          color: Color(0xffFFFFFF),
          margin: EdgeInsets.only(left: 5, right: 5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
          child: Container(
              height: opac1 ? MediaQuery.of(context).size.height / 1.5 : 1,
              width: opac1 ? double.infinity : 1,
              child: SingleChildScrollView(
                  child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              AppRoutes.push(context, Myorders());
                            },
                            child: Image.asset(
                              'images/cross.png',
                              scale: 4,
                            ))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              'images/buyerrequest.png',
                              scale: 3,
                            ),
                          ),
                          Text('John Doe',
                              style: TextStyle(color: Colors.black))
                        ],
                      )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: Text(
                      'dolor sit amet Lorem ispum dolor sit amet dolor sit amet consecteture adipsingelit  Lorem ispum dolor sit amet consecteture consecteture adipsingelit  ',
                      style: TextStyle(
                          color: Color(0xff29346E),
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                        '____________________________________________________________',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 7, top: 10),
                          child: Text(
                            'Seller Communication',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          )),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Row(
                          children: <Widget>[
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5)
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 7, top: 10),
                          child: Text(
                            'Would Recomented',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          )),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Row(
                          children: <Widget>[
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5)
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 7, top: 10),
                          child: Text(
                            'Service as described',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          )),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Row(
                          children: <Widget>[
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5)
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 7, top: 10),
                          child: Text(
                            'Overall Rating',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          )),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Row(
                          children: <Widget>[
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5),
                            Image.asset('images/alertstar.png', scale: 5)
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top:16),
                    child: Text(
                        '____________________________________________________________',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: Row(
                      children: <Widget>[
                        Text('Write Review',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff666666),
                                fontSize: 12)),
                      ],
                    ),
                  ),
                    Container(
                  margin: EdgeInsets.only(left: 15,top: 12,right:15),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/5,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey
          ),
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: Colors.white,
          
            ),
        child:Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width/1.3,
              child:TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left:3,
                ),
                hintText: 'Write here...',
                hintStyle: 
                TextStyle(color: Colors.grey,fontSize:10,
                fontWeight: FontWeight.bold),
             
                ),
                maxLines:8,
            
            )),
      

          ],
        ),
        ),
                  Container(
                      height: MediaQuery.of(context).size.height/8,
                      margin: EdgeInsets.only(top: 0, left: 60, right: 60),
                      child: InkWell(
                        onTap: () {
                        setState(() {
                          opac1=false;
                        });

                          dialogBoxUniversal(context, 'remove.png',
                              'You successfully review your Gig', () {});
                        },
                        child: Image.asset(
                          'images/sendfeedback.png',
                          scale: 2,
                        ),
                      ))
                ],
              )))),
    );
  }

  Widget activebottomsheet(BuildContext context) {
    return Opacity(
      opacity: opac ? 1 : 0,
      child: Container(
        height: opac ? 500 : 1,

        //  width: MediaQuery.of(context).size.width/2,
        //color: Colors.black,
        child: Card(
          elevation: 30,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              AppRoutes.push(context, Myorders());
                              setState(() {
                                val = 1;
                              });
                            },
                            child: Image.asset(
                              'images/cross.png',
                              scale: 4,
                            ))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              'images/buyerrequest.png',
                              scale: 3,
                            ),
                          ),
                          Text('John Doe',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))
                        ],
                      )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: Text(
                      'Lorem ispum dolor sit amet consecteture Lorem ispum dolor sit amet consecteture Lorem ispum dolor sit amet consecteture adipsingelit Lorem ispum dolor sit amet consecteture adipsingelit  Lorem ispum dolor sit amet consecteture adipsingelit  Lorem ispum dolor sit amet consecteture adipsingelit  ',
                      style: TextStyle(
                          color: Color(0xff29346E),
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Text('About Order',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                                Container(
                  margin: EdgeInsets.only(left: 15,top: 12,right:15),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/5,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey
          ),
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: Colors.white,
          
            ),
        child:Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width/1.3,
              child:TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left:3,
                ),
                hintText: 'Write here...',
                hintStyle: 
                TextStyle(color: Colors.grey,fontSize:10,
                fontWeight: FontWeight.bold),
             
                ),
                maxLines:8,
            
            )),
      

          ],
        ),
        ),
        Container(
                    margin: EdgeInsets.only(top: 10, left: 20),
                    child: Row(
                      children: <Widget>[
                        Text('Attach File',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff666666),
                                fontSize: 12)),
                        SizedBox(
                          width: 3,
                        ),
                        Image.asset('images/attach.png', scale: 5)
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  AppRoutes.pop(context);
                  AppRoutes.push(context, Myorders());
                  dialogBoxUniversal(
                      context, 'remove.png', 'Thanks for your Review', () {});
                },
                child: Container(
                    margin: EdgeInsets.only(left: 50, right: 50),
                    height: MediaQuery.of(context).size.height / 17,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                            colors: [Color(0xffD04593), Color(0xffE14841)])),
                    child: Center(
                      child: Text('DELIVER ORDER',
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  void dialogBoxUniversal(context, String image, String msg, onTap) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.only(bottom: 00),
            backgroundColor: Colors.transparent,
            titlePadding: EdgeInsets.all(0),
            title: Container(
              margin: EdgeInsets.only(bottom: 00),
              height: 200,
              child: Container(
                margin: EdgeInsets.only(top: 35, bottom: 00),
                padding:
                    EdgeInsets.only(top: 35, left: 0, right: 0, bottom: 00),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('Congragulations',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(msg,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () {
                          AppRoutes.pop(context);
                        },
                        child: Container(
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xffD04593),
                                  Color(0xffE14841),
                                ]),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.only(
                                top: 5, bottom: 00, left: 10, right: 10),
                            child: Center(
                              child: Text('Ok',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  )),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  void dialogBoxWarning(
    context,
    String image,
    String msg,
  ) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
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
                          borderRadius: BorderRadius.circular(11)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          // Text('Are You sure',style: TextStyle(color: black, fontSize: 18, fontWeight: FontWeight.bold)),
                          Text(msg,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10, right: 10),
                                  child: Text('OK',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
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
                      child: Image.asset(
                        'images/$image.png',
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget completedorderaction() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, index) => completedorders(
                index == 0 ? 3 : index == 1 ? 5 : index == 2 ? 3 : 3,
                index == 0 ? 80 : index == 1 ? 60 : index == 2 ? 60 : 60,
                index)));
  }

  Widget activeorderaction() {
    return Container(
        // padding: EdgeInsets.only(top: 10),
        //color: Colors.grey,
        // padding: EdgeInsets.only(bottom: 50//),

        height: MediaQuery.of(context).size.height / 1.3,
        width: MediaQuery.of(context).size.width,color: Colors.black,
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, index) => activorders(
                index == 0 ? 3 : index == 1 ? 5 : index == 2 ? 3 : 3,
                index == 0 ? 80 : index == 1 ? 60 : index == 2 ? 60 : 60,
                index)));
  }

  Widget upperpart() {
    return Container(
     // height: 50,
      width: MediaQuery.of(context).size.width/ 1.8,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffD04593), Color(0xffE47C79)],
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 7),
            width: MediaQuery.of(context).size.width / 4,
            child: InkWell(
              onTap: () {
                setState(() {
                  val = 1;
                });
              },
              child: Container(
                  height: MediaQuery.of(context).size.height / 22,
                  width: MediaQuery.of(context).size.width / 4.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        val == 1 ? Colors.white : Colors.transparent,
                        val == 1 ? Colors.white : Colors.transparent,
                      ])),
                  child: Center(
                      child: Text('ACTIVE',
                          style: TextStyle(
                              color: val == 2 ? Colors.white : Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.bold)))),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 7),
            width: MediaQuery.of(context).size.width / 4,
            child: InkWell(
              onTap: () {
                setState(() {
                  val = 2;
                });
              },
              child: Container(
                  height: MediaQuery.of(context).size.height / 22,
                  width: MediaQuery.of(context).size.width / 4.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        val == 2 ? Colors.white : Colors.transparent,
                        val == 2 ? Colors.white : Colors.transparent,
                      ])),
                  child: Center(
                      child: Text('COMPLETED',
                          style: TextStyle(
                              color: val == 1 ? Colors.white : Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.bold)))),
            ),
          )
        ],
      ),
    );
  }

  Widget completedorders(int number, int budget, index) {
    return Card(
      elevation: 10,
      // margin: EdgeInsets.only(top: index==0?10:0),
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'images/buyerrequest.png',
                        scale: 3,
                      ),
                    ),
                    Text('John Doe',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold))
                  ],
                )),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    '22-10-2020',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 7,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text('Order Title',
                        style: TextStyle(
                            color: blueColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)))
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Text(
                'Lorem ispum dolor sit amet consecteture Lorem ispum dolor sit amet consecteture Lorem ispum dolor sit amet consecteture adipsingelit Lorem ispum dolor sit amet consecteture adipsingelit  Lorem ispum dolor sit amet consecteture adipsingelit  Lorem ispum dolor sit amet consecteture adipsingelit  ',
                style: TextStyle(
                    color: Color(0xff29346E),
                    fontSize: 11,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Row(
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              AppRoutes.push(context, Myorders());
                            },
                            child: Image.asset('images/completed.png',
                                scale: 4.5)),
                        SizedBox(
                          width: 12,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                opac1 = !opac1;
                              });
                            },
                            child:
                                Image.asset('images/reviewit.png', scale: 4.5)),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    children: <Widget>[
                      Text('\$$budget',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text('Budget',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey,
                          ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }

  Widget activorders(int number, int budget, index) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey, width: 5),
             ),
          boxShadow: [BoxShadow(color: Color(0xffFFFFFF))]),
      //margin: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'images/buyerrequest.png',
                      scale: 3,
                    ),
                  ),
                  Text('John Doe',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold))
                ],
              )),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  '22-10-2020',
                  style: TextStyle(color: Colors.grey, fontSize: 7),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text('Order Title',
                      style: TextStyle(
                          color: blueColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)))
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Text(
              'Lorem ispum dolor sit amet consecteture Lorem ispum dolor sit amet consecteture Lorem ispum dolor sit amet consecteture adipsingelit Lorem ispum dolor sit amet consecteture adipsingelit  Lorem ispum dolor sit amet consecteture adipsingelit  Lorem ispum dolor sit amet consecteture adipsingelit  ',
              style: TextStyle(
                  color: Color(0xff29346E),
                  fontSize: 11,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text(
                      'Duration:$number working Days',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 8),
                    child: Text(
                      'Time Left 2 days 16hrs',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Column(
                  children: <Widget>[
                    Text('\$$budget',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    Text('Budget',
                        style: TextStyle(
                          fontSize: 7,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: InkWell(
                      onTap: () {
                        // _showDialog();
                        setState(() {
                          opac = !opac;
                        });
                      },
                      child: Image.asset('images/delivered.png', scale: 4.5)))
            ],
          ),
          // Container(
          //   height: 2,
          //   width: MediaQuery.of(context).size.width,
          //   color: Colors.blueGrey,
          // ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }

//    void _showDialog() {
//     // flutter defined function
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         // return object of type Dialog
//         return AlertDialog(
// title:  SingleChildScrollView(
//   child:
//     ),
//           actions: <Widget>[
//   InkWell(
//   onTap: (){
//   AppRoutes.pop(context);
// deliverorderpopup();
//   },
//   child:
//   Image.asset('images/deliveredorder.png',
// scale:1,),
//   )

//             // usually buttons at the bottom of the dialog

//             ] );
//       },
//     );
//   }
  void _reviewDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(actions: <Widget>[
          // usually buttons at the bottom of the dialog
        ]);
      },
    );
  }

  sendfeedbackpopup() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actions: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30, right: 0),
                height: MediaQuery.of(context).size.height / 5.2,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('Congratulations',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black)),
                        Container(
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text(
                              'Thanks for your review.',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    Container(
                      color: Colors.black,
                      child: InkWell(
                          onTap: () {
                            AppRoutes.pop(context);
                            setState(() {
                              val = 2;
                            });
                            //  AppRoutes.push(context, Myorders());
                          },
                          child: Container(
                              height: MediaQuery.of(context).size.height / 17,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  gradient: LinearGradient(colors: [
                                    Color(0xffD04593),
                                    Color(0xffE14841)
                                  ])),
                              child: Center(
                                  child: Text('Ok',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white))))),
                    )
                  ],
                ),
              )
            ],
          );
        });
  }

  void deliverorderpopup() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Container(
              margin: EdgeInsets.only(top: 70, right: 0),
              height: MediaQuery.of(context).size.height / 5.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.yellow,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Congratulations',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)),
                  Container(
                      margin: EdgeInsets.only(
                        top: 0,
                      ),
                      child: Text('You Successfully review deliver an order.')),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 0),
                      child: InkWell(
                          onTap: () {
                            AppRoutes.pop(context);
                            setState(() {
                              val = 1;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 3),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Color(0xffD04593),
                              Color(0xffE14841)
                            ])),
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text('ok',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                  )),
                            ),
                          )))
                ],
              ),
            ),
          );
        });
  }
}

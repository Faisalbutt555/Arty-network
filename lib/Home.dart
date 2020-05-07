import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network/Drawer.dart';

import 'package:network/approuteclass.dart';

import 'buyer/bar_drawer.dart';
import 'buyer/bestsellergigs.dart';
import 'buyer/bestsellers.dart';
import 'buyer/bestsellinggigs.dart';
import 'buyer/constants.dart';
import 'buyer/single_eventclass.dart';




class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StateHome();
  }

}

class _StateHome extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var value=0.0;
  bool opac=false;
  var newRange=0.0;
  var selectedRange=RangeValues(0.2,0.8);
  double values=0.0;
  var newrating;
  int bottomsheet=0;
  int pricebutton=1;


int val=1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomSheet:
      bottomsheet==1?
      withsearchbottomsheet(context):Text(''),
      key: _scaffoldKey,
     // drawer: DrawerPage(context),
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top: 20),
          child:  AppBarClass(context, true, _scaffoldKey, 'Home'),
        ),
        
  
     ),
      drawer: HomeDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            children: <Widget>[
            Container(
               margin: EdgeInsets.only(top: 10,left: 0,right: 0),
          child:Row(
            children: <Widget>[
              InkWell(
                onTap: (){
           setState(() {
             bottomsheet=1;
           });
             
                },
                child:   Image.asset('images/withsearchbar.png',
              scale:4,),
              ),
           
          Container(
               margin: EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width/1.7,
                height: MediaQuery.of(context).size.height*.06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(08)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.9,
                      spreadRadius: 1.0,
                      color: Colors.grey
                    )
                  ]
                ),
                    child: 
                Padding(
                  padding: EdgeInsets.only(top: 2,left: 20,right: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'SEARCH',
                        hintStyle: TextStyle(
                            color: Color(0xff29346E),
                            fontSize: 16
                        ),
                      suffixIcon: Image.asset('images/search.png',scale: 5,)
                    ),
                  ),
                )
          )
            ],
          )

            

            
              ),
        Stack(
          children: [CarouselSlider(
                height: 150.0,
                autoPlayInterval: Duration(seconds: 4),
                enlargeCenterPage: true,
                autoPlay: true,
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/qc2dLw.png")
                            ),

                          ),

                      );
                    },
                  );
                }).toList(),
              ),

      ]),


              _sellingGigs(context),

              _sellerGigs(context),

              Padding(
                  padding: EdgeInsets.only(left: 10,top: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('BEST SELLERS',style:  TextStyle(
                          fontSize: 18,
                          color: Color(0xff29346E),
                        fontWeight: FontWeight.bold
                      ),),
InkWell(
  onTap:(){
    AppRoutes.push(context,Bestseller());
  } ,
  child:   Text('VIEW ALL',style:  TextStyle(
                          fontSize: 14,
                          color: Color(0xffFE076B)
       ),),
)
                   
                    ],
                  )
              ),

              _Sellers(context),

            ],
          ),
        ),
      ),
    );
  }

  Widget _sellingGigs(BuildContext context) {
    return Column(
      children: <Widget>[

        Padding(
            padding: EdgeInsets.only(left: 10,top: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('BEST SELLING GIGS',style:  TextStyle(
                    fontSize: 18,
                    color: Color(0xff29346E),
                  fontWeight: FontWeight.bold
                ),),
                InkWell(
                  onTap: (){
                    AppRoutes.push(context, Bestsellinggigs());
                  },
                  child:   Text('VIEW ALL',style:  TextStyle(
                    fontSize: 14,
                    color: Color(0xffFE076B)
                ),), 
                )

             
              ],
            )
        ),

       _listOfGig(context)


      ],

    );
  }

  Widget _sellerGigs(BuildContext context) {
    return Column(
      children: <Widget>[

        Padding(
            padding: EdgeInsets.only(left: 10,top: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('BEST SELLERS GIGS',style:  TextStyle(
                    fontSize: 18,
                    color: Color(0xff29346E),
                  fontWeight: FontWeight.bold
                ),),
InkWell(
  onTap: (){
    AppRoutes.push(context, Bestsellergigs());
  },
  child:     Text('VIEW ALL',style:  TextStyle(
                    fontSize: 14,
                    color: Color(0xffFE076B)
                ),), 
),
           
              ],
            )
        ),

        _listOfGig(context)


      ],

    );
  }

  Widget _listOfGig(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,int index){
      return _gig(context, index);
    },itemCount: 10,),
    );
  }

  Widget _gig (BuildContext context,int index) {
    return Column(
      children: <Widget>[
        Flexible(child:Container(
          margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
          width: MediaQuery.of(context).size.width*.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(17)),
            color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                    color: Colors.grey
                )
              ]
          ),

         child:InkWell(
           onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Singleevent()));
           },




           
           child: 
         
         Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('images/qc2dLw.png'),
              Flexible(child:Column(
                mainAxisSize: MainAxisSize.min,
                 children: <Widget>[
                   Row(
                     children: <Widget>[

                       Image.asset('images/circular_image.png',scale: 5,),

                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget>[
                           Text('John Doe',style: TextStyle(
                             fontSize: 10,
                             fontWeight: FontWeight.bold
                           ),),
                           Text('Top Seller',style: TextStyle(
                               fontSize: 6,
                             color: Colors.grey
                           ),)

                         ],
                       )

                     ],
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 10,right: 10),
                     child: Text('ahsbas sjcna kca csancajsj cka ckjanchaiusc akjciahcahsc  sascjs v siudhc hksjd s dvs dkdv sajc akaasjca cahs ckjah shcka sjck ascj ac kascnajsc ajksnc kajckja',
                       maxLines: 3,
                       textAlign: TextAlign.start,
                       style: TextStyle(
                         fontSize: 10,
                       ),),
                   ) ,
                  Padding(
                    padding: EdgeInsets.only(left: 10,right: 100),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.star,color: Colors.yellow,size: 18,),
                        Text('4.9',style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 8,
                        ),),

                        Text('(100)',style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: <Widget>[

                            Icon(Icons.menu,color: Color(0xffFF0067),size: 18,),
                            Icon(Icons.favorite,color: Color(0xffFF0067),size: 18,),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Row(
                          children: <Widget>[
                            Text('\$100',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                            ),)
                          ],
                        ),
                      )

                    ],
                  )
                 ],
              ),fit: FlexFit.loose,),
              SizedBox(height: 10,)

            ],

          )  ),),fit: FlexFit.loose,),
      ],
    );
  }

  Widget _Sellers(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.25,
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,int index){
          return _sellerProfile(
             index==0?'images/Communityfirst.png':index==1?'images/amb2.png':
                        index==2?'images/b1.png':index==3?'images/b2.png':
     index==4?'images/b3.png':index==5?'images/b4.png':'images/b4.png',
            index);
        },itemCount: 10,),
    );
  }

  Widget _sellerProfile (String img, int index)
  {
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 10),
      width: MediaQuery.of(context).size.width/4.5,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            child:  Image.asset('$img',scale: 4,), 
          ),
        
          Text('JOHN DOE',style: TextStyle(
            color: Color(0xff29346E),
            fontSize: 10,
            fontWeight: FontWeight.bold
          ),)
          
        ],
      ),
    );
  }
    Widget withsearchbottomsheet(BuildContext context) {
    return SingleChildScrollView(
      child:Opacity(
      opacity:
      // opac ? 
       1 
      //: 0
      ,
      child: Container(
    height: MediaQuery.of(context).size.height/.3,
        child: Card(
          elevation: 30,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(     
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right:10,top:30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(onTap: (){
                    setState(() {
                      bottomsheet=0;
                    });
               //  AppRoutes.pop(context);
                  },
                  child:  Image.asset('images/cross.png',
                  scale: 4,))
                
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:10,top:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 Text('Select Categories',
                 style:TextStyle(color: Color(0xff29346E),
                 fontSize:18,
                 fontWeight:FontWeight.bold))
                ],
              ),
            ),
                Container(
                  margin: EdgeInsets.only(right:10,top:0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height/13,
                    child:
                  
                  Column(
                    children: <Widget>[
  Text('View all',
                 style:TextStyle(color:Colors.red,
                 fontSize:9,
                )),
                  Text('______',
                 style:TextStyle(color:Colors.red,
                 fontSize:9,
                ))
                    ],
                  ))
               
                ],
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xffD04593), Color(0xffE47C79)],
         
            ),
      ),
      child: RaisedButton(
        color:val==1? Colors.transparent:Color(0xffFAFAFA),
        child: Text("Photographer",
        style: TextStyle(
          color: val==1?Colors.white:Colors.black
        ),
        ),
        onPressed: () {
         setState(() {
           val=1;
         });
        },
      )
      ),

 Container(
   margin: EdgeInsets.only(left: 10),
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
  colors: [Color(0xffD04593), Color(0xffE47C79)],         
            ),
      ),
      child:RaisedButton(
        color:val==2? Colors.transparent:Color(0xffFAFAFA),
        child: Text("Comedian",
        style: TextStyle(
          color: val==2?Colors.white:Colors.black
        ),),
        onPressed: () {
         setState(() {
           val=2;
         });
        },
      )
      ),

         

          ],
        ),
                ),
                              Container(
                  margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
  colors: [Color(0xffD04593), Color(0xffE47C79)],         
            ),
      ),
      child: RaisedButton(
        color:val==3? Colors.transparent:Color(0xffFAFAFA),
        child: Text("Art & Design",
        style: TextStyle(
          color: val==3?Colors.white:Colors.black
        ),
        ),
        onPressed: () {
         setState(() {
           val=3;
         });
        },
      )
      ),

 Container(
   margin: EdgeInsets.only(left: 10,
  ),
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
  colors: [Color(0xffD04593), Color(0xffE47C79)],         
            ),
      ),
      child:RaisedButton(
        color:val==4? Colors.transparent:Color(0xffFAFAFA),
        child: Text("Video & Animation",
        style: TextStyle(
          color: val==4?Colors.white:Colors.black
        ),),
        onPressed: () {
         setState(() {
           val=4;
         });
        },
      )
      ),

         

          ],
        ),
                )
              ],
            ),
               Container(
                 margin: EdgeInsets.only(top: 14,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                 Text('You Selected 1 Categories',
                 style:TextStyle(color: Color(0xff29346E),
                 fontSize:12,
               ))
                ],
              ),
            ),
               Container(
                      margin: EdgeInsets.only(top:8,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 Text('Price',
                 style:TextStyle(color: Color(0xff29346E),
                 fontSize:18,
                 fontWeight:FontWeight.bold))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
        Container(
              width: MediaQuery.of(context).size.width/3.1,
              child: TextField(
                textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    //Add th Hint text here.
                    hintText: "\$ 0",
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                ),
            ),
            Text('to',
            style:TextStyle(color: Color(0xff29346E),
                 fontSize:18,
                 fontWeight:FontWeight.bold)),
                 Container(
              width: MediaQuery.of(context).size.width/3.1,
              child: TextField(
                textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    //Add th Hint text here.
                    hintText: "\$ 0",
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                ),
            ),
                ],
              ),
            ),
            Container(
              child:Slider(
        value: values ,
        onChanged: (newrating){
setState(()=>values=newrating
  
);
        },
        divisions: 1,
        min: 0,
        max: 100,
      
      
    )
            ),
             Container(
                      margin: EdgeInsets.only(top:12,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 Text('Price',
                 style:TextStyle(color: Color(0xff29346E),
                 fontSize:18,
                 fontWeight:FontWeight.bold))
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/12,
              margin: EdgeInsets.only(left: 10,top: 10),
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,index)=>buttonlist(

                index==0?'Newly listed':index==1?'Most relevent':index==2?'Lowest Price':'Lowest Price',
                   index),
              ),
            ),
  
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/7),
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.height*.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color(0xffD04593),
                                Color(0xffE47C79)
                              ]
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Image.asset('images/sign-out-option.png',scale: 3,),
                          ),

                          
                          Text('APPLY FILTERS',style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),),
                        ],
                      )
                  ),
                  onTap: (){
                    setState(() {
                      bottomsheet=0;
                    });
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //       builder: (context) => LoginScreen(),
                    //     ));
                  },
                )
              
          ],
        )
        ),
      ),
     ) );
  }
  Widget _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
           Container(
                height: MediaQuery.of(context).size.height/1.3,
                width: MediaQuery.of(context).size.width/.3,
                child:Column(
                  
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(onTap: (){
                  //  _showDialog();
                AppRoutes.pop(context);
                  },
                  child:  Image.asset('images/cross.png',
                  scale: 4,))
                
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 Text('Select Categories',
                 style:TextStyle(color: Color(0xff29346E),
                 fontSize:18,
                 fontWeight:FontWeight.bold))
                ],
              ),
            ),
                Container(
                   margin: EdgeInsets.only(right: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                 Text('View all',
                 style:TextStyle(color:Colors.red,
                 fontSize:13,
                ))
                ],
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xffD04593),
                                Color(0xffE47C79)
              ],
         
            ),
      ),
      child: RaisedButton(
        color:val==1? Colors.transparent:Color(0xffFAFAFA),
        child: Text("Photographer",
        style: TextStyle(
          color: val==1?Colors.white:Colors.black
        ),
        ),
        onPressed: () {
         setState(() {
           val=1;
         });
        },
      )
      ),

 Container(
   margin: EdgeInsets.only(left: 10),
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
  colors: [Color(0xffD04593), Color(0xffE47C79)],         
            ),
      ),
      child:RaisedButton(
        color:val==2? Colors.transparent:Color(0xffFAFAFA),
        child: Text("Comedian",
        style: TextStyle(
          color: val==2?Colors.white:Colors.black
        ),),
        onPressed: () {
         setState(() {
           val=2;
         });
        },
      )
      ),

         

          ],
        ),
                ),
                              Container(
                  margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
  colors: [Color(0xffD04593), Color(0xffE47C79)],         
            ),
      ),
      child: RaisedButton(
        color:val==3? Colors.transparent:Color(0xffFAFAFA),
        child: Text("Art & Design",
        style: TextStyle(
          color: val==3?Colors.white:Colors.black
        ),
        ),
        onPressed: () {
         setState(() {
           val=3;
         });
        },
      )
      ),

 Container(
   margin: EdgeInsets.only(left: 10,
  ),
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
  colors: [Color(0xffD04593), Color(0xffE47C79)],         
            ),
      ),
      child:RaisedButton(
        color:val==4? Colors.transparent:Color(0xffFAFAFA),
        child: Text("Video & Animation",
        style: TextStyle(
          color: val==4?Colors.white:Colors.black
        ),),
        onPressed: () {
         setState(() {
           val=4;
         });
        },
      )
      ),

         

          ],
        ),
                )
              ],
            ),
               Container(
                 margin: EdgeInsets.only(top: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                 Text('You Selected 1 Categories',
                 style:TextStyle(color: Color(0xff29346E),
                 fontSize:12,
               ))
                ],
              ),
            ),
               Container(
                      margin: EdgeInsets.only(top:8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 Text('Price',
                 style:TextStyle(color: Color(0xff29346E),
                 fontSize:18,
                 fontWeight:FontWeight.bold))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
        Container(
              width: MediaQuery.of(context).size.width/3.1,
              child: TextField(
                textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    //Add th Hint text here.
                    hintText: "\$ 0",
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                ),
            ),
            Text('to',
            style:TextStyle(color: Color(0xff29346E),
                 fontSize:18,
                 fontWeight:FontWeight.bold)),
                 Container(
              width: MediaQuery.of(context).size.width/3.1,
              child: TextField(
                textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    //Add th Hint text here.
                    hintText: "\$ 0",
                    contentPadding: EdgeInsets.only(top: 5, left: 10),
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                ),
            ),
                ],
              ),
            ),
            Container(
              child:Slider(
        value: values ,
        onChanged: (newrating){
setState(()=>values=newrating
  
);
        },
        divisions: 1,
        min: 0,
        max: 100,
      
      
    )
            ),
             Container(
                      margin: EdgeInsets.only(top:12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 Text('Price',
                 style:TextStyle(color: Color(0xff29346E),
                 fontSize:18,
                 fontWeight:FontWeight.bold))
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/12,
              margin: EdgeInsets.only(left: 10,top: 10),
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,index)=>buttonlist(
                index==0?'Newly listed':index==1?'Most relevent':index==2?'Lowest Price':'Lowest Price',
                   index),
              ),
            ),
  
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/14),
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.height*.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                gradientTopColor,
                                gradientBottomColor,
                              ]
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Image.asset('images/sign-out-option.png',scale: 3,),
                          ),
                          Text('LOG OUT',style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),),
                        ],
                      )
                  ),
                  onTap: (){
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //       builder: (context) => LoginScreen(),
                    //     ));
                  },
                )
              
          ],
        )
              ),
            
 
          ],
        );
      },
    );
  }
  Widget buttonlist(String btntxt,index){
    return  
    Container(
   margin: EdgeInsets.only(left: 10),
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
  colors: [Color(0xffD04593), Color(0xffE47C79)],         
            ),
      ),
      child:RaisedButton(
        color:pricebutton==0?Colors.transparent:Color(0xffFAFAFA),
        child: Text("$btntxt",
        style: TextStyle(
          color:pricebutton==0?Colors.white:Colors.black
        ),),
        onPressed: () {
         setState(() {
          pricebutton=0;
         });
         print(pricebutton);
        },
      )
    );
  }
}



import 'dart:ui';

import 'package:flutter/material.dart';

import 'bar_drawer.dart';
class Singleevent extends StatefulWidget {
  @override
  _SingleeventState createState() => _SingleeventState();
}

class _SingleeventState extends State<Singleevent> {
  int val=1;
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  Container(  
       // height: MediaQuery.of(context).size.height/12,
       margin: EdgeInsets.only(left: 80,right: 80),
      decoration: BoxDecoration(
      gradient: LinearGradient(
            colors: [Color(0xffE9B369),Color(0xffCE4593),],
         ),
      ),
      child:  
      RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        color: Colors.transparent,
        onPressed: (){
          
        },
        child: Text('SEND',
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.bold

        ),),
      ),
           ),
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child:Padding(
          padding: EdgeInsets.only(top: 20),
          child: 
        
        AppBarClass(context, false, _scaffoldKey, 'Home'),
     )  ),
        body:SingleChildScrollView(
          child: 
        
        Column(
          children: <Widget>[
  Container(
          height: MediaQuery.of(context).size.height/3.3,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('images/toppic.png',
          fit: BoxFit.fill,),
        ),
        Card(
          elevation: 13,
                  child: Container(
            height:MediaQuery.of(context).size.height/4,

            child:  
            Column(children: <Widget>[
Container(
  //height: MediaQuery.of(context).size.height/4,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        child: Row(
          children: <Widget>[
 Image.asset('images/circular_image.png',
      fit: BoxFit.cover,
      scale: 3,),
      Column(
          children: <Widget>[
Text('JOHN DOE',
style: TextStyle(
  fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold

),),
Text('Top Seller',
style: TextStyle(
  fontSize: 14,color: Color(0xff707070),fontWeight: FontWeight.normal
),)
          ],
      ),
          ],
        ),
       ),
         
      Container(
        margin: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
 Image.asset('images/chathome.png',
      scale: 4,)
          ],
        ),
      )

        ],
  ),
),
Container(
  margin: EdgeInsets.only(left: 13),
  child: 

Text('Lorem ipsum color sit amit,consectetuter adepesecing elit,sesasd do Lorem ipsum color sit amit,consectetuter adepesecing elit,sesasd do Lorem ipsum color sit amit,consectetuter adepesecing elit,sesasd do',
overflow: TextOverflow.visible, style: TextStyle(
  fontSize: 12,fontWeight: FontWeight.normal,color: Color(0xff29346E),
)),
),
Container(
  margin: EdgeInsets.only(left: 13,top:10 ),
  child: 

Row(children: <Widget>[
Image.asset('images/starzz.png',
scale: 4,),
SizedBox(width: 5,),
Text('4.9',
style: TextStyle(
  fontSize: 20,color: Colors.yellow,fontWeight: FontWeight.normal
),
),
SizedBox(width:12,),
Text('(100)',
style: TextStyle(
  fontSize: 20,color: Color(0xff707070),fontWeight: FontWeight.normal
),
)
],))

          ],)

          ),
        ),
      SizedBox(height: 5,),
        Row(

          children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/2,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xffFBB85D), Color(0xffF4A665),Color(0xffCC3B97)],
         
            ),
      ),
      child: RaisedButton(
        color:val==1? Colors.transparent:Color(0xffFAFAFA),
        child: Text("Standard",
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
                height: MediaQuery.of(context).size.height/16,
                width: MediaQuery.of(context).size.width/2,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xffFBB85D), Color(0xffF4A665),Color(0xffCC3B97)],
         
            ),
      ),
      child:RaisedButton(
        color:val==2? Colors.transparent:Color(0xffFAFAFA),
        child: Text("Custom",
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
        val==1?standardpart():custompart()
],
     )
)
      
        );
      
  
  }
  Widget standardpart(){
    return Column(
      children: <Widget>[
Row(
          mainAxisAlignment: MainAxisAlignment.end,
children: <Widget>[

 Container(
       margin: EdgeInsets.only(right: 20,top: 10),
   child:  Text('\$10',
  style: TextStyle(
    color: Color(0xff777777),fontSize: 14,fontWeight: FontWeight.bold
  ),
  ) 
 )
  
],
        ),
     
        
     Container(
       alignment: Alignment.bottomLeft,
       margin: EdgeInsets.only(left: 20,top: 10),
       child: Text('ONE  SIMPLE  LOGO , B/W',
       style: TextStyle(fontSize: 12,color: Color(0xff777777),fontWeight: FontWeight.normal),
       ),
     ),
     Container(
       margin: EdgeInsets.only(top: 10,left: 10),
       child:Row(
       children: <Widget>[
         SizedBox(width: 8,),
         Image.asset('images/clock-circular-outline.png',
         ),
         SizedBox(width: 10,),
         Text('5 Days Delivery',
        style: TextStyle(fontSize: 16,color: Color(0xff777777),fontWeight: FontWeight.bold),

         )
       ]
     ),

     ),
        Container(
       margin: EdgeInsets.only(top: 10,left: 25),
       child:Row(
       children: <Widget>[
         SizedBox(width: 8,),
         Image.asset('images/check-circle-outline.png',
         ),
         SizedBox(width: 10,),
         Text('Source File',
        style: TextStyle(fontSize: 12,color: Color(0xff777777),fontWeight: FontWeight.normal),
)
       ]
     ),

     ),
          Container(
       margin: EdgeInsets.only(top: 10,left: 25),
       child:Row(
       children: <Widget>[
         SizedBox(width: 8,),
         Image.asset('images/check-circle-outline.png',
         ),
         SizedBox(width: 10,),
         Text('Logo Transparency',
        style: TextStyle(fontSize: 12,color: Color(0xff777777),fontWeight: FontWeight.normal),
)
       ]
     ),

     ),
          Container(
       margin: EdgeInsets.only(top: 10,left: 25),
       child:Row(
       children: <Widget>[
         SizedBox(width: 8,),
         Image.asset('images/check-circle-outline.png',
         ),
         SizedBox(width: 10,),
         Text('High Resolution',
        style: TextStyle(fontSize: 12,color: Color(0xff777777),fontWeight: FontWeight.normal),
)
       ]
     ),

     ),
          Container(
       margin: EdgeInsets.only(top: 10,left: 25),
       child:Row(
       children: <Widget>[
         SizedBox(width: 8,),
         Image.asset('images/check-circle-outline.png',
         ),
         SizedBox(width: 10,),
         Text('Vector File ',
        style: TextStyle(fontSize: 12,color: Color(0xff777777),fontWeight: FontWeight.normal),
),
       ]
     ),

     ),
     Row(
       children: <Widget>[
   Container(
       margin: EdgeInsets.only(top: 50,left:20),
       child:
     Text('About This Gig',
     style: TextStyle(fontSize: 18,color: Color(0xff3B3B3B),fontWeight: FontWeight.bold),

     ),
     ),
        Stack(
          children: <Widget>[
Container(
  width: MediaQuery.of(context).size.width/2,
  margin: EdgeInsets.only(right: 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
Image.asset('images/homechat.png',
scale: 4),
    ],
  )

  )
          ],
        ),
       ],
     ),

 Container(
         margin: EdgeInsets.only(top: 10,left:0),
       child: Text('Hello,\n\n\n I will design a perfect logo for your Team, Sport, Gaming,\n Twitch or Portrait logo.\n\n Before you order please contact me to discuss all the\n details for a\n\n if you have an ideas, colors, sketch, or photos, please\n share with me for more details got better results.',
            style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.normal),
),
     ),
Row(
  children: <Widget>[
  IconButton(
    onPressed: (){},
    icon: Icon(Icons.add,
    color: Colors.blue,
    size: 10,),
  ),
  Text('See More',
  style: TextStyle(
    color: Colors.blue,
    fontSize:8,
  ),)
  ],
),
SizedBox(height: 20,),
Text('____________________________________________________',
),
Row(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(left: 40,top: 10),
      child: Text('Style',
   style: TextStyle(fontSize: 13,color: Color(0xff777777),fontWeight: FontWeight.normal),
)
    )

  ],
),
Row(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(left: 20,top: 8),
      child: Text('Mascot/Carton',
   style: TextStyle(fontSize: 14,color: Color(0xff333333),
   ),
)
    )

  ],
),
Row(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(left: 40,top: 25),
      child: Text('File Format',
   style: TextStyle(fontSize: 13,color: Color(0xff777777),fontWeight: FontWeight.normal),
)
    )

  ],
),
Row(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(left: 40,top: 8),
      child: Text('AI,JPG,PDF,PNG',
   style: TextStyle(fontSize: 14,color: Color(0xff333333),
   ),
)
    )

  ],
),

      ],
    );
  }
  Widget custompart(){
    return Container(
      margin: EdgeInsets.only(left: 20,top: 20),
      child: 
    
    Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 16),
          child: Text('Send your Custom Request to Seller',
          style: TextStyle(
          fontSize: 15,fontWeight: FontWeight.bold),
          )
        )
        ],),
               Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 10,left: 16),
          child: Text('Discription',
          style: TextStyle(
            color: Colors.grey,
          fontSize: 15,),
          )
        )
        ],),
   TextFormField(
            
                        decoration: InputDecoration(
                    //Add th Hint text here.
                    hintText: "write here...", 
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 9),
                    border: OutlineInputBorder(
                    
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  minLines: 5,
                  maxLines: 5,
      )  ,
         
    
      Container(
        margin: EdgeInsets.only(right: 20,left: 7,top: 23),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 12),
            child:   Text('Estimated Time',
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey
          ),
          ), 
          ),
       
          Container(
            margin: EdgeInsets.only(right: 10),
            child:    Text('Custom Price',
          style: TextStyle(
            fontSize: 13,
           color: Colors.grey
          ),)        )
        
          ],
      ), 
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 15),
                    width: MediaQuery.of(context).size.width/4,
                    child:  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 0,right: 40
                      ),
                        //border: InputBorder.none,
                        hintText: '5 Days',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ), 
                    ),
                  ),
                  ),
                 Container(
            margin: EdgeInsets.only(right: 20,),
                    width: MediaQuery.of(context).size.width/4.5,
                    child:  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 0,right: 40
                      ),
                        //border: InputBorder.none,
                        hintText: '\$ 50',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ), 
                    ),
                  ),
                  ),
                     
        ],
      ),
     Row(
       children: <Widget>[
         Container(
           margin: EdgeInsets.only(top: 13,left: 16),
           child: Text('Style',
           style:TextStyle(color: Colors.grey,
           fontSize:14,
           fontWeight:FontWeight.bold)),
         )
       ],
     ),
          Row(
       children: <Widget>[
         Container(
           width: MediaQuery.of(context).size.width/6,
           height: MediaQuery.of(context).size.height/31,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 04,left: 10),
           child:Center(
             child:Text('Mascot',
           style:TextStyle(color: Colors.black,
           fontSize:10,
           fontWeight: FontWeight.bold
     
           )), 
           )
       
         ),
                  Container(
           width: MediaQuery.of(context).size.width/3.1,
           height: MediaQuery.of(context).size.height/31,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 04,left: 10),
           child:Center(
             child:     Text('Negative Space',
           style:TextStyle(color: Colors.black,
           fontSize:10,
           fontWeight: FontWeight.bold
           
           )), 
           )
       
         ),
         Container(
          margin: EdgeInsets.only(left: 97),
           child: 
         Image.asset('images/plusadd.png',
         scale: 4,)
         )
       ],
     ),
  Text('_________________________________________________',
  style: TextStyle(
    color: Colors.grey,
    
  ),),
       Row(
       children: <Widget>[
         Container(
           margin: EdgeInsets.only(top: 13,left: 16),
           child: Text('File Formate',
           style:TextStyle(color: Colors.grey,
           fontSize:14,
           fontWeight:FontWeight.bold)),
         )
       ],
     ),
          Row(
       children: <Widget>[
         Container(
           width: MediaQuery.of(context).size.width/11,
           height: MediaQuery.of(context).size.height/31,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 1,left: 12),
           child:Center(
             child:     Text('AI',
           style:TextStyle(color: Colors.black,
    
           fontSize:10,
           fontWeight: FontWeight.bold
           
     
           )), 
           )
       
         ),
         Container(
           width: MediaQuery.of(context).size.width/7.5,
           height: MediaQuery.of(context).size.height/30,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 1,left:5),
           child:Center(
             child:     Text('JPG',
           style:TextStyle(color: Colors.black,
           fontSize:10,
           fontWeight: FontWeight.bold
     
           )), 
           )
         ),
                  Container(
           width: MediaQuery.of(context).size.width/7.5,
           height: MediaQuery.of(context).size.height/30,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 1,left:2.5),
           child:Center(
             child:     Text('PNG',
           style:TextStyle(color: Colors.black,
           
           fontSize:10,
           fontWeight: FontWeight.bold
     
           )), 
           )
       
         ),
         Container(
           margin: EdgeInsets.only(left: 145),
           child: 
         Image.asset('images/plusadd.png',
         scale: 4,)
         )
       ],
     ),
     Text('_________________________________________________',
     style: TextStyle(color: Colors.grey),
),

 Row(
       children: <Widget>[
         Container(
           margin: EdgeInsets.only(top: 13,left: 16),
           child: Text('File Detail',
           style:TextStyle(color: Colors.grey,
           fontSize:14,
           fontWeight:FontWeight.bold)),
         )
       ],
     ),
          Row(
       children: <Widget>[
         Container(
           width: MediaQuery.of(context).size.width/5,
           height: MediaQuery.of(context).size.height/31,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 04,left: 10),
           child:Center(
             child:Text('Source File',
           style:TextStyle(color: Colors.black,
           fontSize:10,
          
     
           )), 
           )
       
         ),
                  Container(
           width: MediaQuery.of(context).size.width/3,
           height: MediaQuery.of(context).size.height/27,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 04,left: 4),
           child:Center(
             child:     Text('Logo Transparency',
           style:TextStyle(color: Colors.black,
           fontSize:10,
           
           )), 
           )
       
         ),
                           Container(
           width: MediaQuery.of(context).size.width/5,
           height: MediaQuery.of(context).size.height/27,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 04,left: 4),
           child:Center(
             child:Text('Vector  File',
           style:TextStyle(color: Colors.black,
           fontSize:10,
           
           )), 
           )
       
         ),
         Container(
           margin: EdgeInsets.only(left:11),
           child: 
         Image.asset('images/plusadd.png',
         scale: 4,)
         )
       ],
     ),
Text('____________________________________________________',
  style: TextStyle(
    color: Colors.grey,
    
  ),),
  ],
        )
  
  
    
     );
  }
}
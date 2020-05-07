import 'package:flutter/material.dart';
import 'package:network/sellermode/sellerdrawer.dart';

import '../approuteclass.dart';
class Personalinfofrmation extends StatefulWidget {
  @override
  _PersonalinfofrmationState createState() => _PersonalinfofrmationState();
}

class _PersonalinfofrmationState extends State<Personalinfofrmation> {
 final GlobalKey<ScaffoldState> _sellerscaffoldKey = new GlobalKey<ScaffoldState>();
int val=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sellerscaffoldKey,
      drawer: SellerDrawer(),
      body: SingleChildScrollView(
        child: 
        val==1?
        Column(
          children: <Widget>[
upperpart(),
  bottompart(),
   ],):val==3?Column(
     children: <Widget>[
       upperpart(),
       SizedBox(height: 6,),
       usergigs()
     ],
   ):val==4?Column(
     children: <Widget>[
    upperpart(),
    usergigs(),
     ],
   ):val==5?newgig():Column(
     children: <Widget>[
    upperpart(),
  
    usergigspart()
     ],
   )
               
    ),
              );
              }
  Widget usergigs(){
    return Column(
   children: <Widget>[
 
   buttonpart(),
  
   SingleChildScrollView(
     child:Container(
height: MediaQuery.of(context).size.height,
  child: GridView.builder(
    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount:2),
  scrollDirection: Axis.vertical,
    itemCount: 10,
    itemBuilder: (BuildContext context,index)=>usergigspart(),
  ),
))




      ],

    );
  }
   Widget buttonpart(){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(20)
      ),
child: Container(
        decoration: BoxDecoration(
      gradient: LinearGradient(
            colors: [Color(0xffD04593), Color(0xffE47C79)],
         ),
         borderRadius: BorderRadius.circular(20)
      ),
   height: MediaQuery.of(context).size.height/14,
  width: MediaQuery.of(context).size.width/1.8,
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(left: 7),
      width: MediaQuery.of(context).size.width/4,
    child:   InkWell(
       onTap: (){
         setState(() {
           val=4;
         });
       },
     child:
     Container(
  height: MediaQuery.of(context).size.height/18,
  width: MediaQuery.of(context).size.width/4.2,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(
      colors: [
     val==4?Colors.white: Color(0xffD04593),
      val==4?Colors.white:Color(0xffE17875),
      ]
      
    )
  ),
  child: 
  Center(
    child: 
  Text(
    'User Gigs',
    style: TextStyle(
    color:val==5?Colors.white:Colors.black,
    fontSize: 13,
    fontWeight: FontWeight.bold
      ) ) ) ),),),
      
 
          InkWell(
       onTap: (){
         setState(() {
           val=5;
         });
       },
     child:
     Container(
       margin: EdgeInsets.only(right: 20),
  height: MediaQuery.of(context).size.height/18,
  width: MediaQuery.of(context).size.width/4.2,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(
      colors: [
     val==5?Colors.white: Color(0xffD04593),
      val==5?Colors.white:Color(0xffE17875),
      ]
      
    )
  ),
  child: 
  Center(
    child: 
  Text(
    'New Gig',
    style: TextStyle(
    color:val==4?Colors.white:Colors.black,
    fontSize: 13,
    fontWeight: FontWeight.bold
      ) ) ) ),),
 
  ],
),
  ),

    );
  } 
  Widget newgig(){
    return Column(
      children: <Widget>[
        Container(
                height: MediaQuery.of(context).size.height/7.2,
                decoration: BoxDecoration(
                   color: Color(0xff3B444B),
                 borderRadius: BorderRadius.only(
bottomRight: Radius.circular(20),
bottomLeft: Radius.circular(20)

                 )
                ),
                child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      InkWell(
          onTap: (){
            AppRoutes.pop(context);
            
            AppRoutes.push(context, Personalinfofrmation());
          },
          child:Icon(Icons.arrow_back_ios,
          color: Colors.white,),
      ),

  Container(
    margin: EdgeInsets.only(right: 20),
    child:Text('Personal Information',
    style:TextStyle(color: Colors.white,
    fontSize:23,
    fontWeight: FontWeight.bold)))
  ,
   Container(
     child: Text(''),
    )
    ],
  ),
),

    Container(
      margin: EdgeInsets.only(top:1,left: 15,right: 15),
      child:TextField(
                        //maxLength: 10,
                        maxLines: 1,
                        minLines: 1,
                       // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Full Name",
                      labelStyle: TextStyle(
                              color: Colors.grey,fontWeight: FontWeight.bold
                            ),
                            hintText: "John Doe",
                            hintStyle: TextStyle(
                              color: Colors.black,fontWeight: FontWeight.bold
                            ),
                            contentPadding: EdgeInsets.only(left: 10,right: 10),   //  <- you can it to 0.0 for no space
                            //isDense: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                        
                            //border: InputBorder.none
                            ),
                      ),
    ),
      Container(
      margin: EdgeInsets.only(top: 0,left: 15,right: 15),
      child:TextField(
                        //maxLength: 10,
                        maxLines: 1,
                        minLines: 1,
                       // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Phone Number",
                      labelStyle: TextStyle(
                              color: Colors.grey,fontWeight: FontWeight.bold
                            ),
                            hintText: "+90 000 000 000",
                            hintStyle: TextStyle(
                              color: Colors.black,fontWeight: FontWeight.bold
                            ),
                            contentPadding: EdgeInsets.only(left: 10,right: 10),   //  <- you can it to 0.0 for no space
                            //isDense: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                        
                            //border: InputBorder.none
                            ),
                      ),
    ),
     Container(
      margin: EdgeInsets.only(top: 0,left: 15,right: 15),
      child:TextField(
                        //maxLength: 10,
                        maxLines: 1,
                        minLines: 1,
                       // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Work",
                      labelStyle: TextStyle(
                              color: Colors.grey,fontWeight: FontWeight.bold
                            ),
                            hintText: "Graphic Design",
                            hintStyle: TextStyle(
                              color: Colors.black,fontWeight: FontWeight.bold
                            ),
                            contentPadding: EdgeInsets.only(left: 10,right: 10),   //  <- you can it to 0.0 for no space
                            //isDense: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                        
                            //border: InputBorder.none
                            ),
                      ),
    ),
     
    Container(

      margin: EdgeInsets.only(top: 8,left: 12,right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        
           Text('data'),
            Text('data')
        ],
      ),
// margin: EdgeInsets.only(left: 2),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[

//    
    
//      Container(
//       margin: EdgeInsets.only(top: 04,left: 170,right: 175),
//       child:TextField(
//                         //maxLength: 10,
//                         maxLines: 1,
//                         minLines: 1,
//                        // keyboardType: TextInputType.number,
//                         decoration: InputDecoration(
//                           labelText: "Age",
//                       labelStyle: TextStyle(
//                         fontSize: 21,
//                               color: Colors.grey,fontWeight: FontWeight.bold
//                             ),
//                             hintText: "22 yrs",
//                             hintStyle: TextStyle(
//                               color: Colors.black,fontWeight: FontWeight.bold
//                             ),
//                             contentPadding: EdgeInsets.only(left: 10,right: 10),   //  <- you can it to 0.0 for no space
//                             //isDense: true,
//                             enabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.grey)),
                        
//                             //border: InputBorder.none
//                             ),
//                       ),
//     ),
    
//      Container(
//       margin: EdgeInsets.only(top: 04,left: 100,right: 175),
//       child:TextField(
//                         //maxLength: 10,
//                         maxLines: 1,
//                         minLines: 1,
//                        // keyboardType: TextInputType.number,
//                         decoration: InputDecoration(
//                           labelText: "Age",
//                       labelStyle: TextStyle(
//                         fontSize: 21,
//                               color: Colors.grey,fontWeight: FontWeight.bold
//                             ),
//                             hintText: "22 yrs",
//                             hintStyle: TextStyle(
//                               color: Colors.black,fontWeight: FontWeight.bold
//                             ),
//                             contentPadding: EdgeInsets.only(left: 10,right: 10),   //  <- you can it to 0.0 for no space
//                             //isDense: true,
//                             enabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.grey)),
                        
//                             //border: InputBorder.none
//                             ),
//                       ),
//     ),
//         ],
//      ),
     ),
     
Container(
      margin: EdgeInsets.only(top: 9,left: 15,right: 15),
      child:TextField(
                        
                        //maxLength: 10,
                        maxLines: 1,
                        minLines: 1,
                       // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.arrow_drop_down),
                          ),
                          labelText: "Country",
                      labelStyle: TextStyle(
                        fontSize: 14,
                              color: Colors.grey,fontWeight: FontWeight.bold
                            ),
                            hintText: "USA",
                            hintStyle: TextStyle(
                              color: Colors.black,fontWeight: FontWeight.bold
                            ),
                            contentPadding: EdgeInsets.only(left: 10,right: 10),   //  <- you can it to 0.0 for no space
                            //isDense: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                        
                            //border: InputBorder.none
                            ),
                      ),
    ),
    Container(
      margin: EdgeInsets.only(top: 0,left: 15,right: 15),
      child:TextField(
                        
                        //maxLength: 10,
                        maxLines: 1,
                        minLines: 1,
                       // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.arrow_drop_down),
                          ),
                          labelText: "State",
                      labelStyle: TextStyle(
                        fontSize: 14,
                              color: Colors.grey,fontWeight: FontWeight.bold
                            ),
                            hintText: "Loream Ispum",
                            hintStyle: TextStyle(
                              color: Colors.black,fontWeight: FontWeight.bold
                            ),
                            contentPadding: EdgeInsets.only(left: 10,right: 10),   //  <- you can it to 0.0 for no space
                            //isDense: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                        
                            //border: InputBorder.none
                            ),
                      ),
    ),
    Container(
      margin: EdgeInsets.only(top: 0,left: 15,right: 15),
      child:TextField(
                        
                        //maxLength: 10,
                        maxLines: 1,
                        minLines: 1,
                       // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.arrow_drop_down),
                          ),
                          labelText: "City",
                      labelStyle: TextStyle(
                        fontSize: 14,
                              color: Colors.grey,fontWeight: FontWeight.bold
                            ),
                            hintText: "Lorium Ipsum",
                            hintStyle: TextStyle(
                              color: Colors.black,fontWeight: FontWeight.bold
                            ),
                            contentPadding: EdgeInsets.only(left: 10,right: 10),   //  <- you can it to 0.0 for no space
                            //isDense: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                        
                            //border: InputBorder.none
                            ),
                      ),
    ),
Container(
  margin: EdgeInsets.only(top:17,left: 13),
  child: Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Text('Languages',
          style:TextStyle(fontWeight: FontWeight.bold,
          fontSize:13,
          color:Colors.grey))
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
  Container(
        height: MediaQuery.of(context).size.height/24,
        margin: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width/5.4,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1
          ),
          borderRadius: BorderRadius.circular(12)
  
        ),
        child: Center(
          child: Text('English',
          style:TextStyle(color:Colors.black,
          fontWeight:FontWeight.bold,
      )),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height/24,
        margin: EdgeInsets.only(top: 12,left: 13),
        width: MediaQuery.of(context).size.width/5.4,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1
          ),
          borderRadius: BorderRadius.circular(12)
  
        ),
        child: Center(
          child: Text('Urdu',
          style:TextStyle(color:Colors.black,
          fontWeight:FontWeight.bold,
      )),
        ),
      ),
              ],
            )
          ),
    
      Container(
        margin: EdgeInsets.only(right: 14),
        child: Image.asset('images/personalinfoplus.png',
        scale: 3.6,),
      )
        ],
      ),
      Text('___________________________________________________________',
      style: TextStyle(
        color: Colors.grey
      ),)

    ],
  ),
),

Container(
  margin: EdgeInsets.only(top:17,left: 13),
  child: Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Text('Skills',
          style:TextStyle(fontWeight: FontWeight.bold,
          fontSize:13,
          color:Colors.grey))
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
  Container(
        height: MediaQuery.of(context).size.height/24,
        margin: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width/4,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1
          ),
          borderRadius: BorderRadius.circular(12)
  
        ),
        child: Center(
          child: Text('Logo Design',
          style:TextStyle(color:Colors.black,
          fontWeight:FontWeight.bold,
      )),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height/24,
        margin: EdgeInsets.only(top: 12,left: 13),
        width: MediaQuery.of(context).size.width/4,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1
          ),
          borderRadius: BorderRadius.circular(12)
  
        ),
        child: Center(
          child: Text('UI/UX Design',
          style:TextStyle(color:Colors.black,
          fontWeight:FontWeight.bold,
      )),
        ),
      ),
              ],
            )
          ),
    
      Container(
        margin: EdgeInsets.only(right: 14),
        child: Image.asset('images/personalinfoplus.png',
        scale: 3.6,),
      )
        ],
      ),
      Text('___________________________________________________________',
      style: TextStyle(
        color: Colors.grey
      ),)

    ],
  ),
),

Container(
  margin: EdgeInsets.only(top: 30),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 10),
        child: 
      InkWell(
        onTap: (){},
        child: 
      
      Image.asset('images/clear.png',
      scale: 3.9,),
      )),
      Container(
          margin: EdgeInsets.only(right: 10),
        child:InkWell(onTap: (){
          AppRoutes.pop(context);
        },
        child:  
            Image.asset('images/save.png',
       scale: 3.9,)
      ))],
  ),
)
   ],
    );
    
  }
  Widget usergigspart(){
    return Column(
      children: <Widget>[
        Flexible(child:Container(
          margin: EdgeInsets.only(left: 10,right: 10,),
          height: MediaQuery.of(context).size.height/3.5,
          width: MediaQuery.of(context).size.width/.6,
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
         //  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Singleevent()));
           },
           child: 
         
         Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('images/qc2dLw.png',
              ),
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
                     child: Text('ahsbckjah shcka sjck ascj ac kascnajsc ajksnc kajckja',
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
  Widget bottompart(){
    return Column(
      children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20,left: 20),
                    child:         Text('Skills',
                                       style: TextStyle(
   color: Color(0xff29346E),                 
          fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),) ,
                  )
         
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 18,right: 20,top: 16),
                child: 
              
              Row(
                children: <Widget>[
     Container(
               height: MediaQuery.of(context).size.height/21.5,
               width: MediaQuery.of(context).size.width/4.6,
               decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black)


               ),
               child: Center(
                 child: Text('Logo designing',
                 style:TextStyle(fontSize: 9,
                 color: Colors.black,
                )),
               ),
             ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
               height: MediaQuery.of(context).size.height/21.5,
               width: MediaQuery.of(context).size.width/4.6,
               decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black)


               ),
               child: Center(
                 child: Text('UI/UX designing',
                 style:TextStyle(fontSize: 9,
                 color: Colors.black,
                )),
               ),
             ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
               height: MediaQuery.of(context).size.height/21.5,
               width: MediaQuery.of(context).size.width/4.6,
               decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black)


               ),
               child: Center(
                 child: Text('Logo designing',
                 style:TextStyle(fontSize: 9,
                 color: Colors.black,
                )),
               ),
             ),
             
                ],
                 )   ),
                 Container(
                   margin: EdgeInsets.only(top: 20,left: 20),
                   child: Row(
                     children: <Widget>[
                            Container(
               height: MediaQuery.of(context).size.height/21.5,
               width: MediaQuery.of(context).size.width/4.6,
               decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black)


               ),
               child: Center(
                 child: Text('Flyers Posters',
                 style:TextStyle(fontSize: 9,
                 color: Colors.black,
                )),
               ),
             ),
                     ],
                   ),
                 ),
                     InkWell(
        onTap: (){
          
        setState(() {
          val=3;
        });
      },
      child: 
      Container(
        margin: EdgeInsets.only(top: 20),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child:
             Row(
              children: <Widget>[

SizedBox(width: 15,),

Text('User GIGS',
  style:TextStyle(fontSize: 17,
      color: Color(0xff29346E),
      fontWeight: FontWeight.bold 
      )

  ),
              ],
            ),
          ),


Container(
  margin: EdgeInsets.only(right: 32),
  child: Row(
    
    children: <Widget>[
  InkWell(
    onTap: (){},
    child:  Image.asset('images/leftarow.png',
  scale:4)
  )
    ],
  )  
),
 ],
       ),
        
       ) ),
        
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     Text('PHOTOS',
                      style: TextStyle(
   color: Color(0xff29346E),                 
          fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                       
                    ),
                     Text('More',
                       style: TextStyle(
                        color: Color(0xff29346E),
                        fontSize: 14,
                        fontWeight: FontWeight.normal
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/4.5,
                margin: EdgeInsets.only(top: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 12,
                  itemBuilder: (BuildContext context,index)=>Column(
                  
                    children: <Widget>[
                      Expanded(
                        child:centerpart(
                    index==0?'images/horse-1165103_960_720.png':index==1?'images/food.png':index==2?'images/folk.png':'images/folk.png',
                 index
                  ) 
                      ),
                      SizedBox(height: 10,),
                      Expanded(
                        child:    centerpart(
                    index==0?'images/horse-1165103_960_720.png':index==1?'images/food.png':index==2?'images/folk.png':'images/folk.png',
                 index
                  ),
                  )
                  ],)
               
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/4.5,
              
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 12,
                  itemBuilder: (BuildContext context,index)=>lowerpart(
                    index==0?'images/friends.png':'images/friends.png',
                 index
                  ) 
                      
                   
                  ),
                  )
      ],
    );
  }
   Widget lowerpart(String img,index){
    return Container(
     margin: EdgeInsets.only(left: 20),
      child: Image.asset('$img',
      scale: 3,),
    );
  }

  Widget centerpart(String img,index){
    return Container(
     margin: EdgeInsets.only(left: 20),
      child: Image.asset('$img',
      scale: 3,),
    );
  }
  Widget upperpart(){
        return Container(
                color: Color(0xff414141),
                height: MediaQuery.of(context).size.height/1.8,
                child: Column(children: <Widget>[
                  Container(
  margin: EdgeInsets.only(top: 35,left: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      InkWell(
          onTap: (){
            AppRoutes.pop(context);
            //AppRoutes.push(context, SellerDrawer());
          },
          child:  Image.asset('images/backarrow.png',
  scale:4),
      ),

  Container(
    margin: EdgeInsets.only(right: 20),
    child:Image.asset('images/dot.png',
  scale:4),)
    ],
  )
 
),

Container(
  margin: EdgeInsets.only(top: 10),
  child:Column(
  children: <Widget>[
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
          Image.asset('images/circular_image.png',
    scale: 2,)
      ],
    ),
    Text('JOHN DOE',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16
    ),),
     Text('@john',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 18
    ),),

  Container(
    padding: EdgeInsets.only(left: 20,right: 20),
    margin: EdgeInsets.only(top: 10,left: 20,right: 20),
    child: Text('Loream ispum djdnf f jdfdfjdb fdfdj fd eernk ddfdj fdfndj fdjfjuduj fdfh dukkkkkdfjkd djfbdj  kjdknkns fdjf djfbdj bffbdjbf',
    style: TextStyle(
    color: Colors.white,
      fontSize: 12
    ),),
  ),
  Container(
    margin: EdgeInsets.only(top:10),
    child:Row(
  mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset('images/newyear.png',
      scale: 3,),
      Container(
        margin: EdgeInsets.only(left: 10),
        child:Text('New York, USA',
        style:TextStyle(color: Colors.white,
        fontSize:13))
      ),
      SizedBox(width: 10,),
       Image.asset('images/portfolio.png',
      scale: 3,),
      Container(
        margin: EdgeInsets.only(left: 10),
        child:Text('Work',
        style:TextStyle(color: Colors.white,
        fontSize:13))
      )
        
    ],
  ) 
  ),
  Container(
    margin: EdgeInsets.only(top:10),
    child:Row(
  mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset('images/calendar.png',
      scale: 3,),
      Container(
        margin: EdgeInsets.only(left: 10),
        child:Text('22 Years',
        style:TextStyle(color: Colors.white,
        fontSize:13))
      ),
      SizedBox(width: 10,),
       Image.asset('images/female.png',
      scale: 3,),
      Container(
        margin: EdgeInsets.only(left: 10),
        child:Text('Male',
        style:TextStyle(color: Colors.white,
        fontSize:13))
      )
        
    ],
  ) 
  ),
  Container(
   margin: EdgeInsets.only(top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
   margin: EdgeInsets.only(right: 12),

          child:CircleAvatar(
            radius: 18,
            backgroundColor: Colors.pink,
            child:Text('f',
            style:TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ))
          )
         
        ),
        Container(
             margin: EdgeInsets.only(left: 5),

              child:CircleAvatar(
                            backgroundColor: Colors.pink,

            radius: 18,
            child:
          Image.asset('images/tweet.png',
          scale: 3,)
          )
        ),
        Container(
                       margin: EdgeInsets.only(left: 10),

           child:CircleAvatar(
                         backgroundColor: Colors.pink,

            radius: 18,
            child: Image.asset('images/goog.png',
          scale: 4,)
          )
        ),
        Container(
                       margin: EdgeInsets.only(left: 10),

              child:CircleAvatar(
                            backgroundColor: Colors.pink,

            radius: 18,
            child: Image.asset('images/inin.png',
          scale: 4,)
          )
        )
      ],
    ),
  )
 
 
  ],
)
),


                ],),
              );
  }
}
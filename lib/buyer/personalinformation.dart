
import 'package:flutter/material.dart';
import 'package:network/sellermode/editprofileseler.dart';
import 'package:network/sellermode/friends.dart';
import 'package:network/sellermode/sellerdrawer.dart';
import '../approuteclass.dart';
import 'constants.dart';
import 'dart:ui';
class Personalinfofrmation extends StatefulWidget {
  @override
  _PersonalinfofrmationState createState() => _PersonalinfofrmationState();
}

class _PersonalinfofrmationState extends State<Personalinfofrmation> {
 final GlobalKey<ScaffoldState> _sellerscaffoldKey = new GlobalKey<ScaffoldState>();
int val=1;
int val1=1;
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
   ],):val1==1?Column(
     children: <Widget>[
       upperpart(),
       SizedBox(height: 6,),
       usergigs()
     ],
   ):val1==2?Column(
     children: <Widget>[
    
    newgig(),
     ],
   ):val==5?newgig():val==6?
   Column(
     children: <Widget>[
    upperpart(),
buttonpart(),
    usergigspart()
     ],
   ):Column(
     children: <Widget>[
    upperpart(),
buttonpart(),
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
  Container(
  
height: MediaQuery.of(context).size.height,
  child: GridView.builder(
    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
      mainAxisSpacing: 10,
       crossAxisCount:2),
  scrollDirection: Axis.vertical,
    itemCount: 10,
    itemBuilder: (BuildContext context,index)=>usergigspart(),
  ),
)
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
   height: MediaQuery.of(context).size.height/16,
  width: MediaQuery.of(context).size.width/1.7,
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(left: 7),
      width: MediaQuery.of(context).size.width/4,
    child:   InkWell(
       onTap: (){
         setState(() {
           val1=1;
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
     val1==1?Colors.white: Colors.transparent,
      val1==1?Colors.white:Colors.transparent,
      ]
      
    )
  ),
  child: 
  Center(
    child: 
  Text(
    'User Gigs',
    style: TextStyle(
    color:val1==2?Colors.white:Colors.black,
    fontSize: 13,
    fontWeight: FontWeight.bold
      ) ) ) ),),),
      
 
          InkWell(
       onTap: (){
         setState(() {
           val1=2;
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
     val1==2?Colors.white: Colors.transparent,
      val1==2?Colors.white:Colors.transparent,
      ]
      
    )
  ),
  child: 
  Center(
    child: 
  Text(
    'New Gig',
    style: TextStyle(
    color:val1==1?Colors.white:Colors.black,
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
      Padding(
        padding: EdgeInsets.only(left: 7,top: 20),
        child: 
      
      InkWell(
          onTap: (){
            AppRoutes.pop(context);
            
            AppRoutes.push(context, Personalinfofrmation());
          },
          child:Icon(Icons.arrow_back_ios,
          color: Colors.white,),
       ) ),

  Container(
    margin: EdgeInsets.only(right: 20,top: 20),
    child:Text('New Gig',
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
      margin: EdgeInsets.only(top:10,left:20,right:20),
      child:TextField(
                        //maxLength: 10,
                        maxLines: 1,
                        minLines: 1,
                       // keyboardType: TextInputType.number,
                        decoration: InputDecoration( 
                          labelText: "Gig Title",
                      labelStyle: TextStyle(
                              color: Colors.grey,fontWeight: FontWeight.bold
                            ),
                            hintText: "Design and At",
                            hintStyle: TextStyle(
                              color: Colors.black,fontWeight: FontWeight.bold
                            ),
                            contentPadding: EdgeInsets.only(left: 0,right: 10),   //  <- you can it to 0.0 for no space
                            //isDense: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                        
                              //border: InputBorder.none
                            ),
                      ),
    ),
    Row(
      children: <Widget>[
        Container(margin: EdgeInsets.only(top: 10,left: 20),
          child: Text('About Gig',
        style:TextStyle(fontWeight: FontWeight.bold,
        color:Colors.grey,
        fontSize:13,)
          ))  ],
    ),
                                Container(
                  margin: EdgeInsets.only(left:18,top:9,right:15),
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
                contentPadding: EdgeInsets.only(left:5,top:5
                ),
                hintText: 'Write here...',
                hintStyle: 
                TextStyle(color: Colors.black,fontSize:10,
                fontWeight: FontWeight.bold),
             
                ),
                maxLines:8,
            
            )),
      

          ],
        ),
        ),
      Container(
        margin: EdgeInsets.only(top: 13,left:16,right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child:Column(
                children: <Widget>[
   Row(
                children: <Widget>[
                  Image.asset('images/video.png',
                  scale: 4,),
                  SizedBox(width: 8,),
                  Image.asset('images/dotimg.png',
                  scale: 4,)
                ],
              ),
              Card(
                   elevation:10,
                child: 
              Container(
               
                margin: EdgeInsets.only(top: 4),
                height: MediaQuery.of(context).size.height/23,
                width: MediaQuery.of(context).size.width/3.5,
                child:Center(child: 
                 Text('Add Videos',
                style:TextStyle(
                  fontSize:11
                )),
                )
                
              )
               ) ],
              )
           
            ),
             Container(
              child:Column(
                children: <Widget>[
   Row(
                children: <Widget>[
                  Image.asset('images/colorful.png',
                  scale: 3.5,),
                  SizedBox(width: 8,),
                  Image.asset('images/dotimg.png',
                  scale: 4,)
                ],
              ),
                Card(
                  elevation:10,
                  child: 
              Container(
               
                margin: EdgeInsets.only(top: 4,),
                height: MediaQuery.of(context).size.height/23,
                width: MediaQuery.of(context).size.width/3.2,
                child:Center(child: 
                 Text('Add Images',
                style:TextStyle(
                  fontSize:11
                )),
                )
                
              )
               )],
              )
           
            )
          ],
        ),
      ),
      
      Container(
        margin: EdgeInsets.only(right: 20,left:8,top: 23),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 12),
            child:   Text('Delivery Time',
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey,
              fontWeight: FontWeight.bold
          ),
          ), 
          ),
       
          Container(
            margin: EdgeInsets.only(right: 10),
            child:    Text('Gig Price',
          style: TextStyle(
            fontSize: 13,
           color: Colors.grey,
           fontWeight: FontWeight.bold
          ),)        )
        
          ],
      ), 
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 19),
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
            margin: EdgeInsets.only(right: 22,),
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
           fontSize:15,
           fontWeight:FontWeight.bold,
           )),
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
           margin: EdgeInsets.only(top: 04,left: 13),
           child:Center(
             child:Text('Mascot',
           style:TextStyle(color: Colors.black,
           fontSize:9,
           fontWeight: FontWeight.bold
     
           )), 
           )
       
         ),
                  Container(
           width: MediaQuery.of(context).size.width/3,
           height: MediaQuery.of(context).size.height/31,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 04,left: 10),
           child:Center(
             child:     Text('Negative Space',
           style:TextStyle(color: Colors.black,
            fontSize:9,
           fontWeight: FontWeight.bold
           
           )), 
           )
       
         ),
         Container(
           margin: EdgeInsets.only(left: 100),
           child: 
         Image.asset('images/plusadd.png',
         scale:4,)
         )
       ],
     ),
Text('___________________________________________________',
  style: TextStyle(
    color: Colors.grey,
    
  ),),
       Row(
       children: <Widget>[
         Container(
           margin: EdgeInsets.only(top: 13,left: 16),
           child: Text('File Formate',
           style:TextStyle(color: Colors.grey,
           fontSize:13,
           fontWeight:FontWeight.bold)),
         )
       ],
     ),
          Row(
       children: <Widget>[
         Container(
           width: MediaQuery.of(context).size.width/11,
           height: MediaQuery.of(context).size.height/32,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 1,left: 14),
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
           height: MediaQuery.of(context).size.height/32,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 1,left: 7),
           child:Center(
             child:     Text('JPG',
           style:TextStyle(color: Colors.black,
                      fontSize:10,
           fontWeight: FontWeight.bold
     
           )), 
           )
         ),
                  Container(
           width: MediaQuery.of(context).size.width/8,
           height: MediaQuery.of(context).size.height/32,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 1,left: 7),
           child:Center(
             child:     Text('PNG',
           style:TextStyle(color: Colors.black,
                  fontSize:10,
           fontWeight: FontWeight.bold
     
           )), 
           )
       
         ),
         Container(
           margin: EdgeInsets.only(left: 152),
           child: 
         Image.asset('images/plusadd.png',
         scale: 4,)
         )
       ],
     ),
Text('___________________________________________________',
     style: TextStyle(color: Colors.grey),
),

 Row(
       children: <Widget>[
         Container(
           margin: EdgeInsets.only(top: 13,left: 16),
           child: Text('File Detail',
           style:TextStyle(color: Colors.grey,
           fontSize:13,
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
           fontSize:9,
     
           )), 
           )
       
         ),
                  Container(
           width: MediaQuery.of(context).size.width/3,
           height: MediaQuery.of(context).size.height/31,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 04,left: 4),
           child:Center(
             child:     Text('Logo Transparency',
           style:TextStyle(color: Colors.black,
           fontSize:9,
           
           )), 
           )
       
         ),
                           Container(
           width: MediaQuery.of(context).size.width/5,
           height: MediaQuery.of(context).size.height/31,
           decoration: BoxDecoration(
             border: Border.all(width: 1, color: Colors.grey),
             borderRadius: BorderRadius.circular(13)
           ),
           margin: EdgeInsets.only(top: 04,left: 4),
           child:Center(
             child:Text('Vector  File',
           style:TextStyle(color: Colors.black,
           fontSize:9,
           
           )), 
           )
       
         ),
         Container(
           margin: EdgeInsets.only(left:25),
           child: 
         Image.asset('images/plusadd.png',
         scale: 4,)
         )
       ],
     ),
Text('___________________________________________________',
  style: TextStyle(
    color: Colors.grey,
    
  ),),
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
),
Container(
  height: 30,
  margin:EdgeInsets.only(top:4),
)


      
      ],
    );
  }
//   
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

                           CircleAvatar(
           radius: 14,
          backgroundColor: Colors.white,
           child: Image.asset('images/circular_image.png',
    scale: 2,),
         ),

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
                    child:Text('Skills',
                                       style: TextStyle(
   color: Color(0xff29346E),                 
          fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),) ,
                  )
         
                ],
              ),
             
skillslist(),
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
                     Text('Add More',
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
                margin: EdgeInsets.only(top: 10,left: 5),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 12,
                  itemBuilder: (BuildContext context,index)=>
                  centerpart(
                    index==0?'images/horse-1165103_960_720.png':index==1?'images/food.png':index==2?'images/folk.png':'images/folk.png',
                 index
                  ) 
               
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
Container(
  margin: EdgeInsets.only(right: 20,top: 10),
  child: InkWell(
    onTap: (){},
    child: Text('View all',
    style: TextStyle(
      color: blueColor,fontWeight: FontWeight.bold,
    ),),
  ),
)
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 0),
                height: MediaQuery.of(context).size.height/4.5,
                child:lowerpart()
                  )
      ],
    );
  }
  Widget skillslist(){
    return Container(
      margin: EdgeInsets.only(left:05,right: 0),
      height: MediaQuery.of(context).size.height/5,
child: ListView.builder(
  scrollDirection: Axis.horizontal,
  itemCount: 12,
  itemBuilder: (BuildContext context,index)=>skills(
    index==0?'images/skillfirst.png':index==1?'images/skillssecond.png':'images/skillssecond.png',
    index
  ),
),
    );
  }
  Widget skills(String img,index){
    return Stack(
      children: <Widget>[
  Container(
width: MediaQuery.of(context).size.width/4,
  decoration:BoxDecoration(
    borderRadius: BorderRadius.circular(7),
          image: new DecorationImage(
            image: new ExactAssetImage('$img',),
            fit: BoxFit.cover
          ),
        ),
        child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
          child: new Container(
            decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
         ), ),
  ),
  

    
    Container(
      margin: EdgeInsets.only(top:13,left:5),
      child:Row(
    children: <Widget>[
      CircleAvatar(
        radius: 10,
        backgroundColor: Colors.white,
        child: Text('+',
      style:TextStyle(color: Colors.red)),
      )
    ],
     ) )
      ],
    );

  }
   Widget lowerpart(){
    return Container(
      margin: EdgeInsets.only(left: 50,right: 50),
      child: 
    
    Row(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: <Widget>[

CircleAvatar(
      radius: 34,
      backgroundColor: Color(0xff2E2E2E),
      child:  InkWell(
        onTap: (){
          AppRoutes.push(context,Friends() );
        },
        child:Image.asset('images/friends.png',
      scale: 3,), 
      ),
),
SizedBox(width: 20,),
    CircleAvatar(
      radius: 34,
      backgroundColor: Color(0xff2E2E2E),
      child:  InkWell(
        onTap: (){},
        child:Image.asset('images/team.png',
      scale: 3,), 
      ),
    ),
  SizedBox(width: 20,),
    
    CircleAvatar(
      radius: 34,
      backgroundColor: Color(0xff2E2E2E),
      child:  InkWell(
        onTap: (){
         setState(() {
           val=6;
           
         });
        },
        child:Image.asset('images/gigs.png',
      scale: 3,), 
      ),
      )  
    ],
    )
    );
 
  }

  Widget centerpart(String img,index){
    return Container(
     margin: EdgeInsets.only(left: 5,right: 5),
height: MediaQuery.of(context).size.height/1.3,
width: MediaQuery.of(context).size.width/3,
  decoration:   BoxDecoration(
    borderRadius: BorderRadius.circular(7),
          image: new DecorationImage(
            image: new ExactAssetImage('$img'),
            fit: BoxFit.cover
          ),
        ),
    );
  }
  Widget upperpart(){
        return Container(
                color: Color(0xff414141),
                height: MediaQuery.of(context).size.height/1.7,
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
          child:  
          Image.asset('images/backarrow.png',
  scale:4),
      ),
          PopupMenuButton(
             shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
             ),
             captureInheritedThemes: true,
              color:Colors.white,
              itemBuilder: (context){
                     var list = List<PopupMenuEntry<Object>>();
                                  list.add(
                                            PopupMenuItem(
                                              height:60,
                                              
                                              child: GestureDetector(
                                                child:Row(
                                                  children: <Widget>[
                                                    // Image.asset('images/editprofile.png',
                                                    // scale: 6,),
                                                    Text("Edit Profile",
                                                  style: TextStyle(color:Colors.black,fontSize: 12,fontWeight: FontWeight.bold),
                                                ),
                                                  ],
                                                ),
                                                
                                                onTap: () {
                                                  AppRoutes.pop(context);
                                               AppRoutes.push(context,Editprofile());
                                                },
                                              ),
                                              value: 1,
                                            ),
                                          );
                                           return list;
                },
                 icon:Icon(Icons.more_vert,size:20,color: Colors.pink,),
          )


    ],
  )
 
),

Container(
  margin: EdgeInsets.only(top:0),
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
    padding: EdgeInsets.only(left: 10,right: 10),
    margin: EdgeInsets.only(top: 10,left: 20,right: 20),
    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 

    style: TextStyle(
    color: Colors.white,
      fontSize: 12
    ),),
  ),
  Container(
    margin: EdgeInsets.only(top:27),
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
         Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child:InkWell(
                    onTap: (){
                      
                    //  facebookalert();
                    },
                    child:CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xff4267B2),
                      foregroundColor: Colors.white,
                      child:Text('f',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),) ), 
                  )
                  
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child:CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xff03A9F4),
                      foregroundColor: Colors.white,
                      child:Image.asset('images/tweet.png',
                      scale: 3.5,)
                      ), 
              
                ),
                    Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child:CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffF44336),
                      foregroundColor: Colors.white,
                      child:Image.asset('images/goog.png',
                      scale: 4,)
                      ), 
              
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child:CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xff0077B5),
                      foregroundColor: Colors.white,
                      child:Text('in',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),)
                      ), 
              
                ),
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
import 'package:flutter/material.dart';
import 'package:network/buyer/personalinformation.dart';

import '../approuteclass.dart';
class Editprofile extends StatefulWidget {
  @override
  _EditprofileState createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: 
      
       editprofile(),
      )  
    );
  }
  Widget editprofile(){
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
      Container(
        margin: EdgeInsets.only(left: 5),
        child:

      
      InkWell(
          onTap: (){
            AppRoutes.pop(context);
            
            AppRoutes.push(context, Personalinfofrmation());
          },
          child:Icon(Icons.arrow_back_ios,
          color: Colors.white,),
        )  ),

  Container(
    margin: EdgeInsets.only(right: 20),
    child:Text('Personal Information',
    style:TextStyle(color: Colors.white,
    fontSize:18,
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
        height: MediaQuery.of(context).size.height/26,
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
        height: MediaQuery.of(context).size.height/26,
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
      Text('______________________________________________________',
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
        height: MediaQuery.of(context).size.height/26,
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
        height: MediaQuery.of(context).size.height/26,
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
      Text('______________________________________________________',
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
}
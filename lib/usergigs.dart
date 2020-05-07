import 'package:flutter/material.dart';

class Usergigs extends StatefulWidget {
  @override
  _UsergigsState createState() => _UsergigsState();
}

class _UsergigsState extends State<Usergigs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('data')
//         Container(
//                 height: MediaQuery.of(context).size.height/7.2,
//                 decoration: BoxDecoration(
//                    color: Color(0xff3B444B),
//                  borderRadius: BorderRadius.only(
// bottomRight: Radius.circular(20),
// bottomLeft: Radius.circular(20)

//                  )
//                 ),
//                 child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: <Widget>[
//       InkWell(
//           onTap: (){
//             AppRoutes.pop(context);
            
//         //    AppRoutes.push(context, Personalinfofrmation());
//           },
//           child:Icon(Icons.arrow_back_ios,
//           color: Colors.white,),
//       ),

//   Container(
//     margin: EdgeInsets.only(right: 20),
//     child:Text('Personal Information',
//     style:TextStyle(color: Colors.white,
//     fontSize:23,
//     fontWeight: FontWeight.bold)))
//   ,
//    Container(
//     )
//     ],
//   ),
// ),

//     Container(
//       margin: EdgeInsets.only(top:1,left: 15,right: 15),
//       child:TextField(
//                         //maxLength: 10,
//                         maxLines: 1,
//                         minLines: 1,
//                        // keyboardType: TextInputType.number,
//                         decoration: InputDecoration(
//                           labelText: "Full Name",
//                       labelStyle: TextStyle(
//                               color: Colors.grey,fontWeight: FontWeight.bold
//                             ),
//                             hintText: "John Doe",
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
//       Container(
//       margin: EdgeInsets.only(top: 0,left: 15,right: 15),
//       child:TextField(
//                         //maxLength: 10,
//                         maxLines: 1,
//                         minLines: 1,
//                        // keyboardType: TextInputType.number,
//                         decoration: InputDecoration(
//                           labelText: "Phone Number",
//                       labelStyle: TextStyle(
//                               color: Colors.grey,fontWeight: FontWeight.bold
//                             ),
//                             hintText: "+90 000 000 000",
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
//       margin: EdgeInsets.only(top: 0,left: 15,right: 15),
//       child:TextField(
//                         //maxLength: 10,
//                         maxLines: 1,
//                         minLines: 1,
//                        // keyboardType: TextInputType.number,
//                         decoration: InputDecoration(
//                           labelText: "Work",
//                       labelStyle: TextStyle(
//                               color: Colors.grey,fontWeight: FontWeight.bold
//                             ),
//                             hintText: "Graphic Design",
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
     


   ],
    )
      
    );
  }
}
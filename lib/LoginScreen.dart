
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network/sellermode/sellerhome.dart';
class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StateLogin();
  }
}

class _StateLogin extends State<LoginScreen> {
  bool loginWidget = true;
  int val=1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .4,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100)),
                    color: Color(0xff292929)),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Image.asset(
                        "images/Untitled-2.png",
                        scale: 5,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 50),
                      child: Text(
                        loginWidget ? 'LOGIN' : "REGISTER",
                        style:
                            TextStyle(color: Color(0xffFF0067), fontSize: 20),
                      ),
                    ),

                  ],
                )),
              ),
              body()
            ],
          ),
        ),
    );
  }

  Widget body() {
    return Column(
      
      children: <Widget>[
      
      _emailPass(context),
      SizedBox(
        height:3.5,
      ),
      _signInWith(context),
      SizedBox(
        height:13,
      ),
      _LogIn(context),
      SizedBox(
        height: 7,
      ),
      register(context)
    ]);
  }

  Widget _emailPass(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          //Email
          !loginWidget?textField(Icons.person,
           "Ambassador User name"):Container(),
          textField(Icons.email, "Email",),
          !loginWidget?textField(Icons.phone, "Phone"):Container(),
          textField(Icons.vpn_key, "Password"),

          //Password

          loginWidget?Padding(
            padding: EdgeInsets.only(top: 10, right: 30),
            child:
            InkWell(onTap:(){

            }, 
            
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Color(0xff29346E),
                      fontSize: 13,
                      fontWeight: FontWeight.normal
           
                      ),
                )
              ],
            ),)
          ):Container()
        ],
      ),
    );
  }

  Widget _signInWith(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:40),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  loginWidget?'Sign in with':"Sign up with",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff29346E),
                      fontWeight: FontWeight.normal),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top:14),
            width: MediaQuery.of(context).size.width * .7,
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
      ),
    );
  }

  Widget _LogIn(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(top: 15, left: 30, right: 30),
        width: MediaQuery.of(context).size.width * .8,
        height: MediaQuery.of(context).size.height * .055,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  Color(0xffCC3B97),
                  Color(0xffFBB85D),
                ])),
        child: Center(
          child: Text(
            loginWidget?'LOGIN':" REGISTER",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize:14),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>SellerPanel()),
        );
      },
    );
  }

  Widget register(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 40, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            loginWidget?'Don\'t have an account ?' :"Already a member ? ",
            style: TextStyle(
              color: Color(0xff29346E),
              fontSize: 14,
            ),
          ),
          GestureDetector(
            child: Text(
              loginWidget?' REGISTER':"LOGIN",
              style: TextStyle(
                  color: Color(0xffFF0067),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              setState(() {
                loginWidget? loginWidget = false: loginWidget = true;
              });
            },
          )
        ],
      ),
    );
  }

  Widget textField(IconData icon, String hintText) {
    return Container(
        margin: EdgeInsets.only(top: 15, left: 30, right: 30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*.07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 5.0, spreadRadius: 1.0, color: Colors.grey)
            ]),
        child:Padding(
          padding: EdgeInsets.only(left:0,),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top:14.2),
                border: InputBorder.none,
                hintText: '$hintText',
                hintStyle: TextStyle(color: Color(0xff29346E),fontSize:15,
                fontWeight: FontWeight.bold),
                prefixIcon: Icon(icon,size:18, color: Colors.grey)),
          ),
        ));
  }
     
}

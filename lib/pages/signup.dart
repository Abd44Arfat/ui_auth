import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 255, 252, 240),
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                         // ignore: prefer_const_constructors
                         SizedBox(
                      height: 22,
                    ),
                    Text("sign up",style: TextStyle(fontSize: 44,fontFamily: "my"),),
                         // ignore: prefer_const_constructors
                         SizedBox(
                      height: 33,
                    ),
                    SvgPicture.asset("assets/icons/signup.svg",height: 180,),
                      // ignore: prefer_const_constructors
                      SizedBox(
                      height: 35,
                    ),
                        Container(
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66),
                ),
                width: 266,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Colors.purple[800],
                      ),
                      hintText: "Your Email :",
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66),
                ),
                width: 266,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffix: Icon(
                        Icons.visibility,
                        color: Colors.purple[900],
                      ),
                      icon: Icon(
                        Icons.lock,
                        color: Colors.purple[800],
                        size: 19,
                      ),
                      hintText: "Password :",
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              ElevatedButton(
                onPressed: () {},
                
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 106, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "login",
                  style: TextStyle(fontSize: 24),
                ),
              ),
               SizedBox(
                height: 23,
              ),
                        Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
Text("Don't have an account ? "),

GestureDetector(
   onTap: () {
                              Navigator.pushNamed(context, "/login");
                            },  child: Text("Log in ",style: TextStyle(fontWeight:FontWeight.bold),)),



                ],

              ),
                 SizedBox(
                height: 23,
              ),
              SizedBox(


                width: 280,
                child: Row(
              children: [
                Expanded(child: Divider(thickness: 1,color: Colors.purple[900])),
                Text(" OR ",style: TextStyle(color: Colors.purple[900]),),
                Expanded(child: Divider(thickness: 1,color: Colors.purple[900])),
              ],
              
                ),
              ),
                     Container(
              margin: EdgeInsets.symmetric(vertical: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                   
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.purple, width: 1 )
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/facebook.svg",
                      color: Colors.purple[700],
                      height: 22,
                    ),
                  ),
                  SizedBox(width: 22,),
                  Container(
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.purple, width: 1 )
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/google-plus.svg",
                      color: Colors.purple[700],
                      height: 22,
                    ),
                  ),
                  SizedBox(width: 22,),

                  Container(
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color:Colors.purple , width: 1 )
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/twitter.svg",
                      color: Colors.purple[700],
                      height: 22,
                    ),
                  ),
                
                
                ],
              ),
            ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 119,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 111,
                ),

              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: 111,
                ),

              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

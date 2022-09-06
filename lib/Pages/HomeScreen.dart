import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PhSignUpScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: -50,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/img/1.jpg"),
              )
          ),
          Positioned(
              top: -70,
              left: 120,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/img/2.jpg"),
              )
          ),
          Positioned(
              top: 80,
              right: -20,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/img/3.jpg"),
              )
          ),
          Positioned(
              top: 250,
              left: 60,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/img/4.jpg"),
              )
          ),
          Positioned(
              top: 300,
              right: -60,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/img/5.jpg"),
              )
          ),
          Positioned(
              top: 430,
              left: -50,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/img/6.jpg"),
              )
          ),
          Positioned(
              top: 500,
              right: 50,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/img/7.jpg"),
              )
          ),
          Positioned(
              top: 630,
              left: -30,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/img/2.jpg"),
              )
          ),
          Opacity(
            opacity: 0.85,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,colors: [Colors.deepPurple.shade700,Colors.deepPurple.shade400, Color.fromARGB(255, 6, 27, 255)])),
            ),
          ),


          Positioned(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 120,),
                      Image.asset("assets/img/Logo.png",height: 100,width: 100,),
                      SizedBox(height: 10,),
                      Text("Chamet", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                      SizedBox(height: MediaQuery.of(context).size.height*0.35,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            onPressed: (){},
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("G", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                                  SizedBox(width: 10,),
                                  Text("Google", style: TextStyle(fontSize: 20),)
                                ],
                              ),
                            ),
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width,

                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PhoneScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.phone_android_sharp),
                                SizedBox(width: 10,),
                                Text("Phone", style: TextStyle(fontSize: 20),)
                              ],
                            ),
                          ),
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepPurple.shade400), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle_rounded, color: Colors.yellow.shade700,),
                          Text(" Agree to ", style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text("User Agreement", style: TextStyle(fontSize: 15, color: Colors.yellow.shade700)),
                          Text(" and ", style: TextStyle(fontSize: 15, color: Colors.white)),
                          Text("Privacy Policy", style: TextStyle(fontSize: 15, color: Colors.yellow.shade700))
                        ],
                      ),
                      SizedBox(height: 30,)


                    ],
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}

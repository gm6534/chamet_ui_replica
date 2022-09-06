import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GenderScreen.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,colors: [ Colors.blue.shade900,Colors.deepPurple.shade400,])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Set My Login Password", style: TextStyle(color: Colors.white, fontSize: 17),),
          centerTitle: true,
          actions: [
            TextButton(
                onPressed: (){},
                child: Text("Skip", style: TextStyle(color: Colors.white, fontSize: 15)))
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100,),
                Opacity(
                  opacity: 0.7,
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.grey.shade400),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                        Expanded(child: TextFormField(decoration: InputDecoration(border: InputBorder.none, hintText: "Password", hintStyle: TextStyle(color: Colors.white, fontSize: 17)))),
                        Image.asset("assets/img/blind.png", color: Colors.white, width: 30,),
                        SizedBox(width: 15,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.8,
                  child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>GenderScreen()));
                      },
                      child: Text("Next", style: TextStyle(color: Colors.white),)
                  ),
                ),
                SizedBox(height: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

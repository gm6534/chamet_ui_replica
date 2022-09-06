import 'package:chamet_ui_replica/Pages/VideoHomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GenderScreen.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,colors: [ Colors.blue.shade900,Colors.deepPurple.shade400,])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Fill your Information", style: TextStyle(color: Colors.white, fontSize: 17),),
          centerTitle: true,
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>VideoHomeScreen()), (route) => false);
                },
                child: Text("Skip", style: TextStyle(color: Colors.white, fontSize: 15)))
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100,),
                CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.add, size: 40, color: Colors.white,),
                  backgroundColor: Colors.grey.shade400,
                ),
                SizedBox(height: 10,),
                Text("Tap to upload poster", style: TextStyle(color: Colors.white),),
                SizedBox(height: 30,),
                Opacity(
                  opacity: 0.7,
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.grey.shade400),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                        Expanded(child: TextFormField(decoration: InputDecoration(border: InputBorder.none, hintText: "Enter your Nick Name", hintStyle: TextStyle(color: Colors.white, fontSize: 17)))),
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
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>VideoHomeScreen()), (route) => false);
                      },
                      child: Text("complete", style: TextStyle(color: Colors.white),)
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

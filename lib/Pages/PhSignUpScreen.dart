import 'package:flutter/material.dart';

import 'VerificationScreen.dart';

class PhoneScreen extends StatelessWidget {
  const PhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight,colors: [ Colors.blue.shade900,Colors.deepPurple.shade400,])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                const Text("Hello", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold,),),
                SizedBox(height: 30,),
                Opacity(
                  opacity: 0.6,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: 55,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.blueGrey.shade300, ),
                    child: Row(
                      children: [
                        SizedBox(width: 8,),
                        CircleAvatar(radius: 15, backgroundImage: AssetImage("assets/img/download.png",),),
                        SizedBox(width: 3,),
                        Text("+92", style: TextStyle(color: Colors.white, fontSize: 17),),
                        SizedBox(width: 3,),
                        Icon(Icons.arrow_drop_down, color: Colors.white,),
                        VerticalDivider(thickness: 1, color: Colors.white, indent: 15, endIndent: 15,),
                        Expanded(child: TextFormField(
                          decoration: InputDecoration(border: InputBorder.none, hintText: "Phone Number", hintStyle: TextStyle(color: Colors.white)),
                        )),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VerificationScreen()));
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

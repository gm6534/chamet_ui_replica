import 'package:flutter/material.dart';

import 'PasswordScreen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Verification code sent  ", style: TextStyle(color: Colors.white, fontSize: 15),),
                    Text("+923000000000", style: TextStyle(color: Colors.yellow.shade700, fontSize: 15)),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade400),
                      child: TextFormField(keyboardType: TextInputType.number, decoration: InputDecoration(border: InputBorder.none),),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade400),
                      child: TextFormField(keyboardType: TextInputType.number, decoration: InputDecoration(border: InputBorder.none),),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade400),
                      child: TextFormField(keyboardType: TextInputType.number, decoration: InputDecoration(border: InputBorder.none),),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade400),
                      child: TextFormField(keyboardType: TextInputType.number, decoration: InputDecoration(border: InputBorder.none),),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text("Resend code (57s)", style: TextStyle(color: Colors.white, fontSize: 15),),
                SizedBox(height: 50,),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.8,
                  child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordScreen()));
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

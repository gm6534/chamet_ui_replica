import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'InfoScreen.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100,),
                  const Text("Gender Selection", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold,),),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.purple.shade300),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male_outlined, color: Colors.white, size: 30,),
                            Text("Male", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                          ],
                        )
                      ),

                      Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.purple.shade300),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female_outlined, color: Colors.white, size: 30,),
                              Text("Female", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                            ],
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error_outlined, color: Colors.white,),
                      Text("  You Can't Change after Confirmation", style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.purple.shade300),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text("Select Date of Birth", style: TextStyle(color: Colors.white, fontSize: 20,),))
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error_outlined, color: Colors.white,),
                      Text("  Not allowed to use under 18", style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.8,
                    child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                        onPressed: (){
                          showDialog(context: context, builder: (context){
                            return AlertDialog(
                              title: Text("Attention", textAlign: TextAlign.center,),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Text("Are you sure to select "),
                                      Icon(Icons.male, color: Colors.yellow.shade800,),
                                      Text("Male?", style: TextStyle(color: Colors.yellow.shade800),)
                                    ],
                                  ),
                                  Text("The Recomendation will be based on your gender. You can not modify it anymore.", style: TextStyle(color: Colors.purple.shade500),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: (){
                                            Navigator.pop(context);
                                          },
                                          child: Text("Think Again", style: TextStyle(color: Colors.purple),)),
                                      SizedBox(width: 40,),
                                      Container(
                                        height: 40,
                                        width: 100,
                                        child: ElevatedButton(
                                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                                            onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>InfoScreen()));
                                            },
                                            child: Text("Confirm", style: TextStyle(color: Colors.white),)
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),

                            );
                          });
                        },
                        child: Text("Next", style: TextStyle(color: Colors.white),)
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

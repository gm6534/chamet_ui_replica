import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height*0.8,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/img/img_3.png",), fit: BoxFit.cover),),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white,)),
                  Spacer(),
                  IconButton(
                      onPressed: (){
                        ///Cupertino Sheet
                        showCupertinoModalPopup(context: context, builder: (context){
                          return CupertinoActionSheet(
                            title: Text("Report", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color: Colors.black),),
                            actions: [
                              CupertinoActionSheetAction(
                                  onPressed: (){},
                                  child: Text("Pornographic", style: TextStyle(fontSize: 19, color: Colors.black),)),
                              CupertinoActionSheetAction(
                                  onPressed: (){},
                                  child: Text("Illegal or Voilence", style: TextStyle(fontSize: 19, color: Colors.black))),
                              CupertinoActionSheetAction(
                                  onPressed: (){},
                                  child: Text("Endanger Personal Safety", style: TextStyle(fontSize: 19, color: Colors.black))),
                              CupertinoActionSheetAction(
                                  onPressed: (){},
                                  child: Text("Illegal Avatar", style: TextStyle(fontSize: 19, color: Colors.black))),
                              CupertinoActionSheetAction(
                                  onPressed: (){},
                                  child: Text("Illegal Poster", style: TextStyle(fontSize: 19, color: Colors.black))),
                              CupertinoActionSheetAction(
                                  onPressed: (){},
                                  child: Text("Other", style: TextStyle(fontSize: 19, color: Colors.black))),
                              CupertinoActionSheetAction(
                                onPressed: (){},
                                child: Text("Cancel"),
                                isDestructiveAction: true,
                              ),
                            ],
                          );
                        });
                      },
                      icon: Icon(Icons.warning_amber_rounded, color: Colors.white,)),
                  IconButton(
                      onPressed: (){
                        ///Cupertino Sheet
                        showCupertinoModalPopup(context: context, builder: (context){
                          return CupertinoActionSheet(
                            actions: [
                              CupertinoActionSheetAction(
                                  onPressed: (){},
                                  child: Text("Follow", style: TextStyle(fontSize: 19, color: Colors.black),)),
                              CupertinoActionSheetAction(
                                  onPressed: (){},
                                  child: Text("Move To Blocklist", style: TextStyle(fontSize: 19, color: Colors.black))),
                              CupertinoActionSheetAction(
                                  onPressed: (){},
                                  child: Text("Cancel"),
                                isDestructiveAction: true,
                              ),
                            ],
                          );
                        });
                      },
                      icon: Icon(Icons.more_vert_outlined, color: Colors.white,)),
                ],
              ),
            ],
          ),
        ),
      ),
      ///Bottom Button
      bottomNavigationBar: Row(
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {  },
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width*0.4,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.message_rounded, color: Colors.purple, size: 20,),
                  SizedBox(width: 6,),
                  Text("Message", style: TextStyle(color: Colors.purple, fontSize: 18, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {  },
            child: Container(
              height: 55,
              width: MediaQuery.of(context).size.width*0.6,
              color: Colors.greenAccent.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone, color: Colors.white, size: 20,),
                  SizedBox(width: 6,),
                  Text("Free", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

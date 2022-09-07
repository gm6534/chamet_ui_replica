import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeUser extends StatelessWidget {
  // int? picNum;
  // CustomeUser({required this.picNum});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        // height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (_) => ProfileInfo()));
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                // height: MediaQuery.of(context).size.height * 0.75,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/img/${Random().nextInt(7)}.jpg",
                        )),
                    // color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              // height: MediaQuery.of(context).size.height * 0.8,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Column(
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.purple.shade800.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(40)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              CupertinoIcons.dot_radiowaves_left_right,
                              size: 16,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Live",
                              style:
                              TextStyle(fontSize: 8, color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                  Spacer(),
                  // SizedBox(
                  //   height: MediaQueryof(context).size.height * 0.45,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("User Name",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white)),
                                const SizedBox(
                                  width: 6,
                                ),
                                Container(
                                    height: 16,
                                    width: 32,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color:
                                        Color.fromARGB(255, 241, 95, 144)),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Icon(CupertinoIcons.suit_diamond_fill,
                                            size: 8, color: Colors.white),
                                        Text(
                                          "Lv1",
                                          style: TextStyle(
                                              fontSize: 8, color: Colors.white),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                            Text(
                              "Pak" + " | " + " English",
                              style:
                              TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        // Spacer(),
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                  ),

                  // Align(
                  //   alignment: Alignment.bottomCenter,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(50)),
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: ElevatedButton(
                  //           style: ButtonStyle(
                  //             backgroundColor: MaterialStateProperty.all(
                  //                 Colors.greenAccent.shade400),
                  //             shape: MaterialStateProperty.all(
                  //                 RoundedRectangleBorder(
                  //                     borderRadius: BorderRadius.circular(50))),
                  //             maximumSize:
                  //                 MaterialStateProperty.all(Size(150, 50)),
                  //           ),
                  //           onPressed: () {},
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [Text("Random Match"), Text("Free")],
                  //           )),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
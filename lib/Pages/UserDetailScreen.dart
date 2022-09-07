import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/img/img_3.png",), fit: BoxFit.cover),),
            child: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
          ),
          CustomDraggable(),
        ],
      ),
      ///Bottom Button
      bottomNavigationBar: Row(
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () { },
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
  Widget CustomDraggable () {
    return  DraggableScrollableSheet(
      // expand: true,
      initialChildSize: 0.2,
      minChildSize: 0.2,
      maxChildSize: 1,
      // expand: false,
      builder: (context, controller) {
        return Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),)),
          // /height: MediaQuery.of(context).size.height * 0.3,

          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              controller: controller,
              children: [
                Row(
                  children: [
                    const Text("Group",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 16,
                        ))
                  ],
                ),
                ///Group Section
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(border: Border.all(width: 1.5, color: Colors.purple.shade200), borderRadius: BorderRadius.circular(10), color: Colors.purple.shade50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/img/7.jpg"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.groups_outlined, color: Colors.purple,),
                              SizedBox(width: 10,),
                              Text("Her Family Group (41)", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Text("Bright Future 🙈", style: TextStyle(color: Colors.purple.shade200),)
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded, size: 15, color: Colors.purple.shade200,)
                    ],
                  ),
                ),
                /// Moment Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text("Moment",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 16,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.purple, image: DecorationImage(image: AssetImage("assets/img/7.jpg"), fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.purple, image: DecorationImage(image: AssetImage("assets/img/6.jpg"), fit: BoxFit.cover)),
                        ),
                      ],
                    )
                  ],
                ),
                ///Fusion Gift
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text("Fusion Gifts",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 16,
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                    Container(
                      height: 100,
                      width: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Image.network("https://e7.pngegg.com/pngimages/61/373/png-clipart-sticker-star-exo-star-angle-text.png"),
                          Text("x1", style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                    ),
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://i.pinimg.com/originals/ec/58/6a/ec586ac26f29bf6d186f0a738acdb056.jpg"),
                              Text("x1", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://i.pinimg.com/originals/79/ef/b7/79efb71d5cf3b5646bd31a60974549bc.jpg"),
                              Text("x5", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://cdn-icons-png.flaticon.com/256/6426/6426761.png"),
                              Text("x7", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                ///Gift Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text("Gifts",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 16,
                            ))
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://e7.pngegg.com/pngimages/61/373/png-clipart-sticker-star-exo-star-angle-text.png"),
                              Text("x1", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://i.pinimg.com/originals/ec/58/6a/ec586ac26f29bf6d186f0a738acdb056.jpg"),
                              Text("x1", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://i.pinimg.com/originals/79/ef/b7/79efb71d5cf3b5646bd31a60974549bc.jpg"),
                              Text("x5", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://cdn-icons-png.flaticon.com/256/6426/6426761.png"),
                              Text("x7", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://e7.pngegg.com/pngimages/61/373/png-clipart-sticker-star-exo-star-angle-text.png"),
                              Text("x1", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://i.pinimg.com/originals/ec/58/6a/ec586ac26f29bf6d186f0a738acdb056.jpg"),
                              Text("x1", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://i.pinimg.com/originals/79/ef/b7/79efb71d5cf3b5646bd31a60974549bc.jpg"),
                              Text("x5", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://cdn-icons-png.flaticon.com/256/6426/6426761.png"),
                              Text("x7", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://e7.pngegg.com/pngimages/61/373/png-clipart-sticker-star-exo-star-angle-text.png"),
                              Text("x1", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://i.pinimg.com/originals/ec/58/6a/ec586ac26f29bf6d186f0a738acdb056.jpg"),
                              Text("x1", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://i.pinimg.com/originals/79/ef/b7/79efb71d5cf3b5646bd31a60974549bc.jpg"),
                              Text("x5", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network("https://cdn-icons-png.flaticon.com/256/6426/6426761.png"),
                              Text("x7", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ///Score Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text("Score 4.1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 16,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.purple.shade400),
                          child: Center(child: Text("Elegant 50", style: TextStyle(color: Colors.white),)),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 30,
                          width: 115,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.purple.shade400),
                          child: Center(child: Text("Sports Talent 34", style: TextStyle(color: Colors.white),)),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.purple.shade400),
                          child: Center(child: Text("Lady 32", style: TextStyle(color: Colors.white),)),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.purple.shade400),
                          child: Center(child: Text("Beautiful voice 33", style: TextStyle(color: Colors.white),)),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.purple.shade400),
                          child: Center(child: Text("A Born Beauty 32", style: TextStyle(color: Colors.white),)),
                        ),

                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.purple.shade400),
                          child: Center(child: Text("Gracefull 31", style: TextStyle(color: Colors.white),)),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.purple.shade400),
                          child: Center(child: Text("Cute 28", style: TextStyle(color: Colors.white),)),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.purple.shade400),
                          child: Center(child: Text("Games Talent 25", style: TextStyle(color: Colors.white),)),
                        ),
                      ],
                    )
                  ],
                ),
                ///Remark Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text("Remark",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 16,
                            ))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width*0.9,
                          color: Colors.grey.shade100,
                          child: TextFormField(
                            decoration: InputDecoration(hintText: "Add a Remark...", border: InputBorder.none ),
                            maxLines: 4,
                          )
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

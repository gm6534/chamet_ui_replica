import 'package:flutter/material.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 80.0)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: -40,
                        left: -40,
                        child: Opacity(
                          opacity: 0.3,
                          child: CircleAvatar(
                            backgroundColor: Colors.purple.shade100,
                            radius: 100,
                          ),
                        )),
                    Positioned(
                        right: 40,
                        bottom: 1,
                        child: Opacity(
                          opacity: 0.3,
                          child: CircleAvatar(
                            backgroundColor: Colors.purple.shade100,
                            radius: 80,
                          ),
                        )),
                    Positioned(
                      top: 60,
                      left: 40,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/img/Logo.png"),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("User30592883", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(30)),
                                    child: const Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        "Pakistan",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(30)),
                                    child: const Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        "English",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                        left: 70,
                        child: Row(
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "0",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Friend",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 114, 110, 110)))
                              ],
                            ),
                            SizedBox(width: 40,),
                            Column(
                              children: const [
                                Text("0",
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("Following",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 114, 110, 110)))
                              ],
                            ),
                            SizedBox(width: 40,),
                            Column(
                              children: const [
                                Text("0",
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("Followers",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 114, 110, 110)))
                              ],
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Text("Messages"),
                          const Spacer(),
                          const CircleAvatar(
                            radius: 8,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 16,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          const Text("My Lever"),
                          const Spacer(),
                          const Text(
                            "Lv0",
                            style: TextStyle(color: Colors.grey),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 16,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          const Text("My Balance"),
                          const Spacer(),
                          const Text(
                            "0",
                            style: TextStyle(color: Colors.grey),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 16,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          const Text("My Tasks"),
                          const Spacer(),
                          const Text(
                            "Free Reward",
                            style: TextStyle(color: Colors.grey),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 16,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          const Text("My Cards"),
                          const Spacer(),
                          const Text(
                            "x5",
                            style: TextStyle(color: Colors.grey),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 16,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          const Text("My Profile"),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 16,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          const Text("My Earning"),
                          const Spacer(),
                          const Text(
                            "Cash out",
                            style: TextStyle(color: Colors.grey),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 16,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          const Text("My Chat Price"),
                          const Spacer(),
                          const Text(
                            "1200/min",
                            style: TextStyle(color: Colors.grey),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 16,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Setting"),
                          const Spacer(),
                          const CircleAvatar(
                            radius: 8,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 16,
                              ))
                        ],
                      )
                    ],
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

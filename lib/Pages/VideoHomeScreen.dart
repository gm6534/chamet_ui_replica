import 'package:chamet_ui_replica/Pages/OptionScreen.dart';
import 'package:chamet_ui_replica/Pages/PopularTab.dart';
import 'package:chamet_ui_replica/Pages/UserDetailScreen.dart';
import 'package:chamet_ui_replica/Pages/VideoScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoHomeScreen extends StatefulWidget {
  @override
  State<VideoHomeScreen> createState() => _VideoHomeScreenState();
}

class _VideoHomeScreenState extends State<VideoHomeScreen> with TickerProviderStateMixin {
  // const VideoHomeScreen({Key? key}) : super(key: key);
int _currentIndex=0;
PageController pageController=PageController();
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
          PageView(
            controller: pageController,
            onPageChanged: (value){
              setState(() {
                _currentIndex=value;
              });
            },
            children: [
              customTabBarView(),
              VideoScreen(),
              Center(child: Text("Page " + _currentIndex.toString()),),
              Center(child: Text("Page " + _currentIndex.toString()),),
              OptionScreen(),
            ],),
      ///Bottom Navigation Bar
      //   bottomNavigationBar: CustomBottomNav(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value){
          setState(() {
            _currentIndex=value;
            pageController.animateToPage(_currentIndex, duration: Duration(milliseconds: 500), curve: Curves.ease);
          });
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.videocam), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.sports_volleyball_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),


    );
  }
  Widget customTabBarView(){
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 0,
        title: TabBar(
            unselectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            labelColor: Colors.purple,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            indicatorColor: Colors.transparent,
            controller: _tabController,
            tabs: [
              Tab(child: Text("Near By",),),
              Tab(child: Text("Discover",),),
              Tab(child: Text("Popular",),),
              Tab(child: Text("New",),)
            ]
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.filter_alt_outlined, color: Colors.purple,size: 30,)),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.bar_chart, color: Colors.black,size: 30,))
        ],
      ),
      body: TabBarView(
          controller: _tabController,
          children: [
            Center(
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2/3),
                  itemBuilder: (context, index){
                    return CustomeUser();
                  },
                )
            ),
            Center(
                child: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          CupertinoButton(
                            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>UserDetailScreen())); },
                            child: Container(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              height: 500,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/img/img_3.png",), fit: BoxFit.cover), borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Opacity(
                                    opacity: 0.4,
                                    child: Container(
                                      height: 40,
                                      width: 73,
                                      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(30)),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10,),
                                          Icon(CupertinoIcons.dot_radiowaves_left_right, color: Colors.purple, size: 20,),
                                          Text(" Live", style: TextStyle(color: Colors.white),),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Demo", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                                              SizedBox(width: 10,),
                                              Chip(

                                                  backgroundColor: Colors.pink.shade200,
                                                  label: Row(children: [Icon(CupertinoIcons.suit_diamond_fill, color: Colors.pink.shade100, size: 18, shadows: [],),
                                                    Text("Lv1", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                                                  ],))
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 15,
                                                backgroundImage: AssetImage("assets/img/download.png"),
                                              ),
                                              SizedBox(width: 10,),
                                              Text("Pakistan | Urdu", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                                            ],
                                          )
                                        ],
                                      ),
                                      CupertinoButton(
                                        onPressed: () {  },
                                        child: CircleAvatar(
                                            backgroundColor: Colors.green.shade700,
                                            radius: 33,
                                            child: Icon(Icons.phone, color: Colors.white, size: 45,)
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 50,)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
            ),
            Center(
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2/3),
                  itemBuilder: (context, index){
                    return CustomeUser();
                  },
                )
            ),
            Center(
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2/3),
                  itemBuilder: (context, index){
                    return CustomeUser();
                  },
                )
            ),
          ]
      ),
        ///Floating Action Button
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                minimumSize: MaterialStateProperty.all(Size(158, 58)),
                padding: MaterialStateProperty.all(EdgeInsets.zero)

            ),
            onPressed: (){},
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(color: Colors.greenAccent, borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Random Match", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  Text("Free", style: TextStyle(color: Colors.white),)
                ],
              ),
            ))
    );
  }
}

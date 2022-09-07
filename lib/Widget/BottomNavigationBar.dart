// import 'package:chamet_ui_replica/Pages/VideoHomeScreen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CustomBottomNav extends StatefulWidget {
//
//   int? pageIndex1;
//   // const CustomBottomNav({Key? key}) : super(key: key);
//   CustomBottomNav({required this.pageIndex1});
//   @override
//   State<CustomBottomNav> createState() => _CustomBottomNavState();
// }
//
// class _CustomBottomNavState extends State<CustomBottomNav> {
//   PageController _pageController = PageController(initialPage: 0);
//  int pageIndex=pageIndex1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         children: <Widget>[
//           VideoHomeScreen()
//         ],
//         controller: _pageController,
//         onPageChanged: (int index){
//           setState((){
//             pageIndex=index;
//             _pageController.animateToPage(pageIndex, duration: Duration(milliseconds: 1000), curve: Curves.ease);
//
//           });
//         },
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.purple,
//         unselectedItemColor: Colors.grey,
//         currentIndex: pageIndex,
//         onTap: (int index) {
//           _pageController.animateToPage(
//             index,
//             duration: const Duration(milliseconds: 100),
//             curve: Curves.easeInOut,
//           );
//         },
//         items:  [
//           BottomNavigationBarItem(icon: Icon(Icons.videocam), label: ""),
//           BottomNavigationBarItem(icon: Icon(Icons.live_tv), label: ""),
//           BottomNavigationBarItem(icon: Image.asset("assets/img/img_2.png", height: 30, width: 30, color: Colors.grey,), label: ""),
//           BottomNavigationBarItem(icon: Image.asset("assets/img/img_1.png", height: 30, width: 30, color: Colors.grey, ), label: ""),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
//
//         ],
//       ),
//       // floatingActionButton: FloatingActionButton(onPressed: () {
//       //   Navigator.push(context, MaterialPageRoute(builder: (context)=> Conversation()));
//       // },
//       //   child: Icon(Icons.home),
//       // ),
//     );
//   }
// }

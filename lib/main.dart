import 'package:chamet_ui_replica/Pages/HomeScreen.dart';
import 'package:chamet_ui_replica/Pages/VideoHomeScreen.dart';
import 'package:chamet_ui_replica/Test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Chamet Replica',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:
      // Testing(),
      VideoHomeScreen()
      // HomeScreen(),
    );
  }
}
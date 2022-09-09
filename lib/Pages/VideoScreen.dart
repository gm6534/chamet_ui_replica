import 'package:chamet_ui_replica/video.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}


class _VideoScreenState extends State<VideoScreen> {
  // const VideoScreen({Key? key}) : super(key: key);
  PageController _pageController = PageController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          controller: _pageController,
          children: [
            SingleChildScrollView(
              child: Container(
                height: 663,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    VideoItems(
                      videoPlayerController: VideoPlayerController.network(
                        "https://firebasestorage.googleapis.com/v0/b/internship-46979.appspot.com/o/videos%2F1.mp4?alt=media&token=28e024d1-6274-400b-8777-7609caabfd47",
                      ),
                      looping: true,
                      autoplay: true,
                    ),
                    Positioned(
                      right: 20,
                        top: 20,
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30,))),
                    Positioned(
                      bottom: 100,
                        right: 15,
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.thumb_up_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Like", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_down_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("DisLike", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.message_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Comment", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.share, color: Colors.white, size: 30,),
                            ),
                            Text("Share", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            // SizedBox(height: 15,),
                            // IconButton(
                            //   onPressed: (){},
                            //   icon: Icon(Icons.more_horiz, color: Colors.white, size: 30,),
                            // ),

                          ],
                        )),
                    // Positioned(
                    //   bottom: 15,
                    //     left: 15,
                    //     child: Row(
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Container(
                    //           height: 50,
                    //           width: 50,
                    //           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    //         ),
                    //         SizedBox(width: 10,),
                    //         Text("Name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    //       ],
                    //     ))
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 663,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    VideoItems(
                      videoPlayerController: VideoPlayerController.network(
                          "https://firebasestorage.googleapis.com/v0/b/internship-46979.appspot.com/o/videos%2FNature's%20Beauty%20%F0%9F%98%8D%20Amazing%20Scenery%20%23shorts%20%23short%20%23nature%20%23travel%20%23beautiful%20%23river%20%23birds%20%23greenery.mp4?alt=media&token=fc40e3ba-b058-463f-9411-e24320a006c9"),
                      looping: false,
                      autoplay: true,
                    ),
                    Positioned(
                        right: 20,
                        top: 20,
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30,))),
                    Positioned(
                        bottom: 100,
                        right: 15,
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_up_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Like", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_down_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("DisLike", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.message_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Comment", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.share, color: Colors.white, size: 30,),
                            ),
                            Text("Share", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            // SizedBox(height: 15,),
                            // IconButton(
                            //   onPressed: (){},
                            //   icon: Icon(Icons.more_horiz, color: Colors.white, size: 30,),
                            // ),

                          ],
                        )),
                    // Positioned(
                    //   bottom: 15,
                    //     left: 15,
                    //     child: Row(
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Container(
                    //           height: 50,
                    //           width: 50,
                    //           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    //         ),
                    //         SizedBox(width: 10,),
                    //         Text("Name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    //       ],
                    //     ))
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 663,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    VideoItems(
                      videoPlayerController: VideoPlayerController.network(
                          "https://firebasestorage.googleapis.com/v0/b/internship-46979.appspot.com/o/videos%2Fvideoplayback.mp4?alt=media&token=d019c642-8daa-4c64-beb5-34fcbdbcee6a"),
                      looping: true,
                      autoplay: false,
                    ),
                    Positioned(
                        right: 20,
                        top: 20,
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30,))),
                    Positioned(
                        bottom: 100,
                        right: 15,
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_up_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Like", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_down_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("DisLike", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.message_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Comment", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.share, color: Colors.white, size: 30,),
                            ),
                            Text("Share", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            // SizedBox(height: 15,),
                            // IconButton(
                            //   onPressed: (){},
                            //   icon: Icon(Icons.more_horiz, color: Colors.white, size: 30,),
                            // ),

                          ],
                        )),
                    // Positioned(
                    //   bottom: 15,
                    //     left: 15,
                    //     child: Row(
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Container(
                    //           height: 50,
                    //           width: 50,
                    //           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    //         ),
                    //         SizedBox(width: 10,),
                    //         Text("Name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    //       ],
                    //     ))
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 663,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    VideoItems(
                      videoPlayerController: VideoPlayerController.network(
                          "https://firebasestorage.googleapis.com/v0/b/internship-46979.appspot.com/o/videos%2FJurassic%20world%20WhatsApp%20status%20%F0%9F%94%A5%20Animals%20grow%20ups%20%23shorts%20%23dinosaur%20%23jurassic%20%23youtubeshorts%20%23animal.mp4?alt=media&token=04c3d3ee-ad91-46d4-a62e-7c50ff7ae9da"),
                      looping: true,
                      autoplay: false,
                    ),
                    Positioned(
                        right: 20,
                        top: 20,
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30,))),
                    Positioned(
                        bottom: 100,
                        right: 15,
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_up_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Like", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_down_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("DisLike", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.message_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Comment", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.share, color: Colors.white, size: 30,),
                            ),
                            Text("Share", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            // SizedBox(height: 15,),
                            // IconButton(
                            //   onPressed: (){},
                            //   icon: Icon(Icons.more_horiz, color: Colors.white, size: 30,),
                            // ),

                          ],
                        )),
                    // Positioned(
                    //   bottom: 15,
                    //     left: 15,
                    //     child: Row(
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Container(
                    //           height: 50,
                    //           width: 50,
                    //           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    //         ),
                    //         SizedBox(width: 10,),
                    //         Text("Name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    //       ],
                    //     ))
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 663,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    VideoItems(
                      videoPlayerController: VideoPlayerController.network(
                          "https://firebasestorage.googleapis.com/v0/b/internship-46979.appspot.com/o/videos%2FGo%20views%20-%20Beautiful%20places%20in%20the%20World%20%23shorts.mp4?alt=media&token=8c09f791-37cd-432a-a5d2-477007f38377"),
                      looping: true,
                      autoplay: false,
                    ),
                    Positioned(
                        right: 20,
                        top: 20,
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30,))),
                    Positioned(
                        bottom: 100,
                        right: 15,
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_up_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Like", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_down_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("DisLike", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.message_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Comment", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.share, color: Colors.white, size: 30,),
                            ),
                            Text("Share", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            // SizedBox(height: 15,),
                            // IconButton(
                            //   onPressed: (){},
                            //   icon: Icon(Icons.more_horiz, color: Colors.white, size: 30,),
                            // ),

                          ],
                        )),
                    // Positioned(
                    //   bottom: 15,
                    //     left: 15,
                    //     child: Row(
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Container(
                    //           height: 50,
                    //           width: 50,
                    //           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    //         ),
                    //         SizedBox(width: 10,),
                    //         Text("Name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    //       ],
                    //     ))
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 663,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    VideoItems(
                      videoPlayerController: VideoPlayerController.network(
                          "https://firebasestorage.googleapis.com/v0/b/internship-46979.appspot.com/o/videos%2FBeautiful%20Place%20%F0%9F%92%95%20Ravello%2CItaly%20%F0%9F%98%AF%20Its%20Amazing%20%F0%9F%98%8D%F0%9F%8C%BC%20%23shorts%20%23nature%20%23beautiful%20%23travel%20%23mountains.mp4?alt=media&token=86e63c2f-8420-43d5-8721-046b70385330"),
                      looping: true,
                      autoplay: false,
                    ),
                    Positioned(
                        right: 20,
                        top: 20,
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30,))),
                    Positioned(
                        bottom: 100,
                        right: 15,
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_up_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Like", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_down_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("DisLike", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.message_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Comment", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.share, color: Colors.white, size: 30,),
                            ),
                            Text("Share", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            // SizedBox(height: 15,),
                            // IconButton(
                            //   onPressed: (){},
                            //   icon: Icon(Icons.more_horiz, color: Colors.white, size: 30,),
                            // ),

                          ],
                        )),
                    // Positioned(
                    //   bottom: 15,
                    //     left: 15,
                    //     child: Row(
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Container(
                    //           height: 50,
                    //           width: 50,
                    //           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    //         ),
                    //         SizedBox(width: 10,),
                    //         Text("Name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    //       ],
                    //     ))
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 663,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    VideoItems(
                      videoPlayerController: VideoPlayerController.network(
                          "https://firebasestorage.googleapis.com/v0/b/internship-46979.appspot.com/o/videos%2F2.mp4?alt=media&token=88955d04-06ba-4c59-aa62-f56d6c12b0d3"),
                      looping: true,
                      autoplay: false,
                    ),
                    Positioned(
                        right: 20,
                        top: 20,
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30,))),
                    Positioned(
                        bottom: 100,
                        right: 15,
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_up_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Like", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.thumb_down_alt_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("DisLike", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.message_rounded, color: Colors.white, size: 30,),
                            ),
                            Text("Comment", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.share, color: Colors.white, size: 30,),
                            ),
                            Text("Share", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            // SizedBox(height: 15,),
                            // IconButton(
                            //   onPressed: (){},
                            //   icon: Icon(Icons.more_horiz, color: Colors.white, size: 30,),
                            // ),

                          ],
                        )),
                    // Positioned(
                    //   bottom: 15,
                    //     left: 15,
                    //     child: Row(
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Container(
                    //           height: 50,
                    //           width: 50,
                    //           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    //         ),
                    //         SizedBox(width: 10,),
                    //         Text("Name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    //       ],
                    //     ))
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

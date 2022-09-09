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
                        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
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
                          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
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
                          "https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4"),
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
            // SingleChildScrollView(
            //   child: Container(
            //     height: 663,
            //     width: MediaQuery.of(context).size.width,
            //     child: Stack(
            //       children: [
            //         VideoItems(
            //           videoPlayerController: VideoPlayerController.network(
            //               "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"),
            //           looping: true,
            //           autoplay: false,
            //         ),
            //         Positioned(
            //             right: 20,
            //             top: 20,
            //             child: IconButton(
            //                 onPressed: (){},
            //                 icon: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30,))),
            //         Positioned(
            //             bottom: 100,
            //             right: 15,
            //             child: Column(
            //               children: [
            //                 IconButton(
            //                   onPressed: (){},
            //                   icon: Icon(Icons.thumb_up_alt_rounded, color: Colors.white, size: 30,),
            //                 ),
            //                 Text("Like", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            //                 SizedBox(height: 15,),
            //                 IconButton(
            //                   onPressed: (){},
            //                   icon: Icon(Icons.thumb_down_alt_rounded, color: Colors.white, size: 30,),
            //                 ),
            //                 Text("DisLike", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            //                 SizedBox(height: 15,),
            //                 IconButton(
            //                   onPressed: (){},
            //                   icon: Icon(Icons.message_rounded, color: Colors.white, size: 30,),
            //                 ),
            //                 Text("Comment", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            //                 SizedBox(height: 15,),
            //                 IconButton(
            //                   onPressed: (){},
            //                   icon: Icon(Icons.share, color: Colors.white, size: 30,),
            //                 ),
            //                 Text("Share", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            //                 // SizedBox(height: 15,),
            //                 // IconButton(
            //                 //   onPressed: (){},
            //                 //   icon: Icon(Icons.more_horiz, color: Colors.white, size: 30,),
            //                 // ),
            //
            //               ],
            //             )),
            //         // Positioned(
            //         //   bottom: 15,
            //         //     left: 15,
            //         //     child: Row(
            //         //       crossAxisAlignment: CrossAxisAlignment.center,
            //         //       children: [
            //         //         Container(
            //         //           height: 50,
            //         //           width: 50,
            //         //           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
            //         //         ),
            //         //         SizedBox(width: 10,),
            //         //         Text("Name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
            //         //       ],
            //         //     ))
            //       ],
            //     ),
            //   ),
            // ),
            SingleChildScrollView(
              child: Container(
                height: 663,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    VideoItems(
                      videoPlayerController: VideoPlayerController.network(
                          "https://www.fluttercampus.com/video.mp4"),
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
                          "https://github.com/stephangopaul/video_samples/blob/master/gb.mp4?raw=true"),
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
                          "https://media.istockphoto.com/videos/cute-noisy-miner-bird-sitting-on-a-fence-on-the-bank-of-cooks-river-video-id1327917757"),
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

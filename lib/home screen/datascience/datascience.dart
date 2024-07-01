import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../homescreen.dart';

class Data extends StatefulWidget {
  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
   bool ispaymentConfirmed=false;
   
   late VideoPlayerController _controller;
   
   
   @override
  void initState() {
    super.initState();
    _controller=VideoPlayerController.networkUrl(Uri.parse('https://media.istockphoto.com/id/1556389414/video/man-using-a-laptop-double-exposure-with-business-data-analytics-dashboard.mp4?s=mp4-640x640-is&k=20&c=J7dE_a85kSnTLEFiXYLbDpK-W9_8S6GtD14l3DD6EMQ='))
    ..initialize().then((_){
      setState(() {

      });
    });
  }
  @override
  void dispose() {
   _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       _controller.value.isPlaying
      //           ? _controller.pause()
      //           : _controller.play();
      //     });
      //   },
      //   child: Icon(
      //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      //   ),
      // ),
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black87,
            size: 25,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text(
            "Course Details",
            style: TextStyle(color: Colors.black87, fontSize: 20),
          ),
        ),
      ),

      body: Stack(children: [
         Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            // Padding(
            //   padding: const EdgeInsets.only(right: 15, left: 15),
            //   child: Container(
            //     height: 219,
            //     width: 395,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(15),
            //         image: DecorationImage(
            //             fit: BoxFit.fill,
            //             image: AssetImage(
            //               'assets/image/DataScience_shutterstock_1054542323 (1).png',
            //             ),),
            //     ),
            //   ),
            // ),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),
    child: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: Container(child: VideoPlayer(_controller)),
        )
            : Container(),

  )),
),

            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                "Data Science",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                "A Comprehensive data science course with machine learning\nand python programming ",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Container(
                  height: 24,
                  width: 55,
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.star_border,
                          color: Colors.white,
                          size: 13,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          "48",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(padding: EdgeInsets.only(left: 1,right: 1,top: 2),
                  height: 24,
                  width: 65,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: Text(
                    " 12 Hours",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ],
            ),




            SizedBox(height: 15),
 Expanded(child: ListView.builder(itemCount: 6,
     itemBuilder: (context,index){
   return Padding(padding: EdgeInsets.only(right: 10,left: 10),
   child: ispaymentConfirmed
     ?CourseItem()
     :Blur(
       blur:1.2,
     blurColor: Theme.of(context).cardColor,
     child: CourseItem(),
   ));
 }))
            // if (! ispaymentConfirmed)
        // Expanded(
        //   child: ListView.builder(itemCount: 6,
        // itemBuilder: (context,index){
        //   return Padding(
        //     padding: const EdgeInsets.only(right: 15, left: 10),
        //     child: Blur(
        //       blur: 1.2,
        //       blurColor: Theme.of(context).cardColor,
        //       child: Padding(
        //         padding: const EdgeInsets.only(top: 10,bottom: 10),
        //         child: Container(
        //           height: 89,
        //           width: 391,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(15),
        //               color: Colors.grey[300]),
        //           child: Row(
        //             children: [
        //               Stack(
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.all(10),
        //                     child: ClipRRect(
        //                         borderRadius: BorderRadius.circular(12),
        //                         child: Image(
        //                           image: AssetImage(
        //                               "assets/image/DataScience_shutterstock_1054542323 (1).png"),height: 69,width: 112,
        //                           fit: BoxFit.fill,
        //                         )),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.only(left: 130, top: 3),
        //                     child: Text(
        //                       "Lesson 1",
        //                       style: TextStyle(
        //                           color: Colors.black87,
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.bold),
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.only(left: 130, top: 22),
        //                     child: Text(
        //                       "A Comprehensive data science course with\nmachine learning and python programming ",
        //                       style: TextStyle(fontSize: 11),
        //                     ),
        //                   ),
        //                   Positioned(
        //                     bottom: 1,
        //                     child: Padding(
        //                       padding: const EdgeInsets.only(bottom: 6, left: 95),
        //                       child: Container(
        //                         height: 21,
        //                         width: 65,
        //                         margin: EdgeInsets.symmetric(
        //                           horizontal: 33,
        //                         ),
        //                         decoration: BoxDecoration(
        //                             borderRadius: BorderRadius.circular(15),
        //                             color: Colors.black),
        //                         child: Padding(
        //                           padding: const EdgeInsets.only(top: 2, left: 5),
        //                           child: Text(
        //                             " 13 Mins",
        //                             style: TextStyle(
        //                                 color: Colors.white, fontSize: 12),
        //                           ),
        //                         ),
        //
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   );
        //   }),
        //
        // ),


          ],
        ),
      Positioned(top: 100,left: 170,
        child: Container(height: 40,width: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),

          child: IconButton(onPressed: (){setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });

          }, icon: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow,color: Colors.black87,)),
        ),
      ),
      if(!ispaymentConfirmed)
        Positioned(bottom: 1,right: 5,left: 5,
          child: InkWell(onTap: (){
            setState(() {
              ispaymentConfirmed=true;
            });
          },


            child: Container(height: 58,width: 386,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10)
              ,
              decoration: BoxDecoration(color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Center(child: Text("Complete Payment To Access Full Course",
                style: TextStyle(color: Colors.white, fontSize: 15),)),

            ),
          ),
        ),
    ]
      ),
    );
  }
}
class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10),
      child: Container(
        height: 89,
        width: 391,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300]),
        child: Row(
            children: [
        Stack(
        children: [
        Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(
              image: AssetImage(
                  "assets/image/DataScience_shutterstock_1054542323 (1).png"),height: 69,width: 112,
              fit: BoxFit.fill,
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 130, top: 3),
        child: Text(
          "Lesson 1",
          style: TextStyle(
              color: Colors.black87,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 130, top: 22),
        child: Text(
          "A Comprehensive data science course with\nmachine learning and python programming ",
          style: TextStyle(fontSize: 11),
        ),
      ),
      Positioned(
        bottom: 1,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 6, left: 95),
          child: Container(
            height: 21,
            width: 65,
            margin: EdgeInsets.symmetric(
              horizontal: 33,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.only(top: 2, left: 5),
              child: Text(
                " 13 Mins",
                style: TextStyle(
                    color: Colors.white, fontSize: 12),
              ),
            ),

          ),
        ),
            ),
          ],
        ),]
      ),
    ));
  }
}


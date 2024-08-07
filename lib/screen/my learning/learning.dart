


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../datascience/datascience.dart';



class Learning extends StatefulWidget{
  @override
  State<Learning> createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  YoutubePlayerController? _controller;
  String? _lastWatchedVideoId;

  @override
  void initState() {
    super.initState();
    _loadLastWatchedVideo();
  }

  Future<void> _loadLastWatchedVideo() async {
    String? videoId = await getLastWatchedVideo();
    setState(() {
      _lastWatchedVideoId = videoId;
      if (_lastWatchedVideoId != null) {
        _controller = YoutubePlayerController(
          initialVideoId: _lastWatchedVideoId!,
          flags: YoutubePlayerFlags(
            autoPlay: false,
            mute: false,
          ),
        );
      }
    });
  }

  Future<String?> getLastWatchedVideo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> videoHistory = prefs.getStringList('videoHistory',) ?? [];
    if (videoHistory.isNotEmpty) {
      return videoHistory.last;



    }
    return null;
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    backgroundColor: Colors.white,
    appBar: AppBar(centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,

      title: Text(
        "My Learning",
        style: TextStyle(color: Colors.black87, fontSize: 20),
      ),
    ),


    body: ListView(

      children: [
        _lastWatchedVideoId == null
            ? Center(child: Text('No video watched yet.'))
            : YoutubePlayer(
          controller: _controller!,
          showVideoProgressIndicator: true,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            "Data Science",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            "A Comprehensive data science course with machine learning\nand python programming ",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(height: 10),
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
            Container(
              height: 24,
              width: 65,
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  " 12 Hours",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 15),

        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Data()));
          },
            child: Container(
              height: 219,
              width: 395,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/image/DataScience_shutterstock_1054542323 (1).png',
                  ),),
              ),
              child: Stack(
                children: [

                  Positioned(bottom: 10,
                    child: Row(
                      children: [
                        Container(
                          height: 16,
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
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.star_border,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Text(
                                  "48",
                                  style: TextStyle(color: Colors.white, fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 16,
                          width: 55,
                          margin: EdgeInsets.symmetric(

                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 1,left: 15),
                            child: Text(
                              " 2:30",
                              style: TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],

              ),
            ),
          ),
        ),

        SizedBox(height: 20),


        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Container(
            height: 219,
            width: 395,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/image/udemy-business-organic-social-share-1200x630-refresh-1.png',
                ),),
            ),
            child: Stack(
              children: [

                Positioned(bottom: 10,
                  child: Row(
                    children: [
                      Container(
                        height: 16,
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
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.star_border,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Text(
                                "48",
                                style: TextStyle(color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 16,
                        width: 55,
                        margin: EdgeInsets.symmetric(

                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 1,left: 15),
                          child: Text(
                            " 2:30",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),



              ],

            ),
          ),
        ),





        SizedBox(height: 20),


        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Container(
            height: 219,
            width: 395,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/image/89a5fa66325dc917012c7616e3f6190faa2f111b.jpeg',
                ),),
            ),
            child: Stack(
              children: [

                Positioned(bottom: 10,
                  child: Row(
                    children: [
                      Container(
                        height: 16,
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
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.star_border,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Text(
                                "48",
                                style: TextStyle(color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 16,
                        width: 55,
                        margin: EdgeInsets.symmetric(

                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 1,left: 15),
                          child: Text(
                            " 2:30",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),



              ],

            ),
          ),
        ),


        Text("  "),





      ],
    ),





  );
  }
}
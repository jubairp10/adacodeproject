import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../homescreen.dart';

class mern extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        children: [
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Container(
              height: 219,
              width: 395,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/image/1687700213776.png',
                      ))),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Mern Stack",
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
            padding: const EdgeInsets.only(right: 15, left: 10),
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
                                  "assets/image/1687700213776.png"),height: 69,width: 112,
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
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 10),
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
                                  "assets/image/1687700213776.png"),height: 69,width: 112,
                              fit: BoxFit.fill,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130, top: 3),
                        child: Text(
                          "Lesson 2",
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
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 10),
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
                                  "assets/image/1687700213776.png"),height: 69,width: 112,
                              fit: BoxFit.fill,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130, top: 3),
                        child: Text(
                          "Lesson 3",
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
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 10),
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
                                  "assets/image/1687700213776.png"),height: 69,width: 112,
                              fit: BoxFit.fill,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130, top: 3),
                        child: Text(
                          "Lesson 4",
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
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 10),
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
                                  "assets/image/1687700213776.png"),height: 69,width: 112,
                              fit: BoxFit.fill,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130, top: 3),
                        child: Text(
                          "Lesson 5",
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
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 10),
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
                                  "assets/image/1687700213776.png"),height: 69,width: 112,
                              fit: BoxFit.fill,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130, top: 3),
                        child: Text(
                          "Lesson 6",
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
                  ),
                ],
              ),
            ),
          ),

          Text(" ")
        ],
      ),
    );
  }
}

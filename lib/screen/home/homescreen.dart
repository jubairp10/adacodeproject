


import 'package:carousel_slider/carousel_slider.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hello/login/loginpage.dart';
import 'package:provider/provider.dart';


import '../../navigation/navigation.dart';
import '../../service/firebasehelper.dart';
import '../Scholarship Details/Scholarship detail.dart';
import '../contacts/contact.dart';
import '../datascience/datascience.dart';
import '../flutter/flutter.dart';
import '../mern/mernstack.dart';
import '../my learning/learning.dart';



class Screen1 extends StatefulWidget {

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  GlobalKey<ScaffoldState>_scaffoldkey=GlobalKey<ScaffoldState>();





  // final user = FirebaseHelper().getCurrentUser();



  final List<String> imgList = [

    "assets/gif/ad159dcc-2ebe-4e96-a8e0-9ccd28857b97.gif",
    "assets/gif/fa2b4fe3-b78e-4cbe-8d66-7c72fe9601e4.gif",
    "assets/gif/4e9cb9e7-ef79-4a3e-ac04-6de35679c307.gif"

  ];


  String getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else if(hour <20){
      return 'Good Evening';
    }else{
      return "Good Night";
    }
  }




  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);


    final user = context.read<FirebaseHelper>().user;
    return Scaffold(
    key: _scaffoldkey,
      endDrawer: RPadding(
        padding: const EdgeInsets.only(left: 150,top: 30,bottom: 30),
        child: Drawer(
           backgroundColor: Colors.white,
          child: Column(

            // padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(height: 30.h),
             RPadding(
               padding: const EdgeInsets.all(8.0),
               child: Container(height: 63.h,width: 198.w,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.grey[300]

                 ),
                 child: Stack(
                   children: [

                     Positioned(left: 30.w,top: 10.h,
                       child: CircleAvatar(
                         backgroundImage: NetworkImage(user.photoURL ?? ''),
                       ),
                     ),
                     Positioned(left: 80.w,top: 10.h,
                       child: Text(
                         getGreeting(),
                         style: TextStyle(color: Colors.grey[500]),
                       ),
                     ),
                     Positioned(left: 78.w,top: 30.h,
                       child:
                       Text(
                        ' ${user.displayName !}',
                         style: TextStyle(
                             color: Colors.black87,
                             fontWeight: FontWeight.bold,
                             fontSize: 12.sp),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.home,size: 15.sp,color: Colors.grey[600],),
                title: Text('Home',style: TextStyle(color: Colors.grey[600]),),
                onTap: () {
                  // Handle the tap here
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Naviga()));
                },
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.book,size: 15.sp,color: Colors.grey[600]),
                title: Text('My Learning',style: TextStyle(color: Colors.grey[600]),),
                onTap: () {
                  // Handle the tap here
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Learning()));
                },
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.graduationCap,size: 15.sp,color: Colors.grey[600]),
                title: Text('Scholarship',style: TextStyle(color: Colors.grey[600]),),
                onTap: () {
                  // Handle the tap here
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Scholarship()));
                },
              ),
              ListTile(
                leading:Icon(Icons.person,size: 20.sp,color: Colors.grey[600]),
                title: Text("Contact Us",style: TextStyle(color: Colors.grey[600]),),
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact()));
                  // Handle the tap here
                },
              ),
          SizedBox(height: 180.h,),

          RPadding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(onTap: ()

              async {
                await FirebaseHelper().signOut();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );



            },
              child: Container(height: 43.h,width: 163.w,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.grey[300]
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.signOutAlt,size: 15.sp),
                    SizedBox(width: 10.w,),
                    Text('Sign Out',style: TextStyle(fontSize: 16.sp),),
                  ],
                )
                ),
            ),
          ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(user.photoURL ?? ''),
              radius: 20,
            ),
            title: RPadding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                getGreeting(),
                style: TextStyle(color: Colors.grey[400]),
              ),
            ),
            subtitle: Text(
              ' ${user.displayName !}',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp),
            ),
            trailing: RPadding(
              padding: const EdgeInsets.only(bottom: 10),
              child: InkWell(onTap: (){
                _scaffoldkey.currentState?.openEndDrawer();
              },
                child: Image.asset(
                  "assets/image/menu (2).png",
                  color: Colors.black,
                  height: 34.h,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          RPadding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "About Us",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5.h),


          CarouselSlider(
            options: CarouselOptions(
              height: 180.h, // Adjust the height as needed
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 2500),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              aspectRatio: 13/9,
              viewportFraction: 0.8,
              initialPage: 0,
            ),
            items: imgList.map((item) => Container(
              height: 190.h, // Adjust the height as needed
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                  child: Image.asset(item, fit: BoxFit.fill, width: 1000.w, height: 300.0.h),
                ),
              ),
            )).toList(),
          ),








          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     height: 210,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(15),
          //         image: DecorationImage(
          //             fit: BoxFit.fill,
          //             image: AssetImage(
          //               'assets/image/5513626_2859376.jpg',
          //             ))),
          //   ),
          // ),
          SizedBox(height: 6.h),
          RPadding(
            padding: const EdgeInsets.only(left: 11),
            child: Text(
              "Our institution offers scholarships to outstanding students,\nrecognizing and rewarding exceptional talent and commitment to,\neducation.",
              style: TextStyle(color: Colors.black, fontSize: 11.sp,fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.h),
          RPadding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                shape: BoxShape.rectangle,
                color: Colors.teal,
                // image: DecorationImage(image: AssetImage('Albert_Schweitzer.png',),fit: BoxFit.cover,)
              ),
              height: 200.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 12.w,
                    top: 8.h,
                    child: Text(
                      "Scholarship",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Positioned(top: 40.h,
                    left: 10.w,
                    child: Text(
                      "Our institution offers scholarships to\noutstanding students, recognizing and\nrewarding exceptional talent and commitment\nto education. ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Positioned(
                    right: 0.w,
                    height: 50.h,
                    child: RPadding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          "assets/image/99.png",
                        ),
                        radius: 20,
                      ),
                    ),
                  ),
                  Positioned(top: 140.h,
                    left: 50.w,
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black87),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Scholarship()));
                        },
                        child: Text(
                          "              Check Eligibility             ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 13.h,
          ),
          SafeArea(
            child: Container(height: 250.h,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RPadding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 223.h,width: 175.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                                topRight:Radius.circular(15) )
                              ,child: Image(
                                image:
                                AssetImage("assets/image/DataScience_shutterstock_1054542323 (1).png"),
                                fit: BoxFit.fill,
                                height: 97.h,width: 175.w,
                              ),
                            ),
                            Positioned(
                              bottom: 95.h,
                              left: 10.w,

                              child: Text(
                                "Data Science",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Positioned(

                              left: 10.w,
                           bottom: 55.h,

                              child: Text(
                                "Learn to Datasciene and\nmachine learning...",
                                style: TextStyle(color: Colors.black87),
                              ),),

                            Positioned(
                              top: 169.h,
                              left: 25.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black87),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Data()));
                                },
                                child: Text(
                                  "   6 Lessons  ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),



                    RPadding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 223.h,width: 175.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                                topRight:Radius.circular(15) )
                              ,child: Image(
                                image:
                                AssetImage("assets/image/1687700213776.png"),
                                fit: BoxFit.fill,
                                height: 97.h,width: 175.w,
                              ),
                            ),
                            Positioned(
                              bottom: 95.h,
                              left: 10.w,

                              child: Text(
                                "Mern Stack",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Positioned(

                              left: 10.w,
                              bottom: 55.h,

                              child: Text(
                                "Learn to Datasciene and\nmachine learning...",
                                style: TextStyle(color: Colors.black87),
                              ),),

                            Positioned(
                              top: 169.h,
                              left: 25.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black87),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>mern()));
                                },
                                child: Text(
                                  "   6 Lessons  ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),


                    RPadding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 223.h,width: 175.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                                topRight:Radius.circular(15) )
                              ,child: Image(
                                image:
                                AssetImage("assets/image/images (5).jpeg"),
                                fit: BoxFit.fill,
                                height: 97.h,width: 175.w,
                              ),
                            ),
                            Positioned(
                              bottom: 95.h,
                              left: 10.w,

                              child: Text(
                                "Flutter",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Positioned(

                              left: 10.w,
                              bottom: 55.h,

                              child: Text(
                                "Learn to Datasciene and\nmachine learning...",
                                style: TextStyle(color: Colors.black87),
                              ),),

                            Positioned(
                              top: 169.h,
                              left: 25.w,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black87),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>flutter()));
                                },
                                child: Text(
                                  "   6 Lessons  ",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),





                  ],


                ),

              ),

            ),
          ),


         Text("  "),


        ],



      ),
    );
  }



}

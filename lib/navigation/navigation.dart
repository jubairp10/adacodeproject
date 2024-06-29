import 'package:flutter/material.dart';
import 'package:advanced_salomon_bottom_bar/advanced_salomon_bottom_bar.dart';

import '../home screen/contacts/contact.dart';
import '../home screen/homescreen.dart';
import '../home screen/my learning/learning.dart';

void main() {
  runApp(Naviga());
}

class Naviga extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Naviga> {
  var _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(

      backgroundColor: Colors.white,
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            Screen1(),
            Learning(),


          ],
        ),
        bottomNavigationBar: AdvancedSalomonBottomBar(decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20))),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            });
          },
          items: [
            /// Home
            AdvancedSalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.teal,
            ),




            /// Profile
            AdvancedSalomonBottomBarItem(
              icon: Icon(Icons.history_edu),
              title: Text("Learning"),
              selectedColor: Colors.teal,
            ),


          ],
        ),



      ),
    );
  }
}


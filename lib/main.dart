// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:hello/navigation/navigation.dart';
// import 'package:hello/service/firebasehelper.dart';
//
// import 'login/loginpage.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//       options: FirebaseOptions(
//           apiKey: "AIzaSyD3Jg7W0gqJUQ7ABgD9ou3qhd5O0EnlIX0",
//           appId: "1:646959906639:android:f52c305929f8d217580f3a",
//           messagingSenderId: " ",
//           projectId:"studentapp-c1db3"));
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   final FirebaseHelper _firebaseHelper = FirebaseHelper();
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(useInheritedMediaQuery: true,
//       debugShowCheckedModeBanner: false,
//       home: AuthCheck(firebaseHelper: _firebaseHelper),
//     );
//   }
// }
//
// class AuthCheck extends StatelessWidget {
//   final FirebaseHelper firebaseHelper;
//
//   AuthCheck({required this.firebaseHelper});
//
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<User?>(
//       stream: firebaseHelper.authStateChanges,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasData) {
//           return Naviga();
//         } else {
//           return Login();
//         }
//       },
//     );
//   }
// }


import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hello/navigation/navigation.dart';
import 'package:hello/service/firebasehelper.dart';
import 'package:provider/provider.dart';

import 'login/loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
          apiKey: "AIzaSyD3Jg7W0gqJUQ7ABgD9ou3qhd5O0EnlIX0",
          appId: "1:646959906639:android:f52c305929f8d217580f3a",
          messagingSenderId: " ",
          projectId:"studentapp-c1db3",
  storageBucket: "studentapp-c1db3.appspot.com"));
  runApp(

      MultiProvider(providers:[
        // ChangeNotifierProvider(
        //     create: (context) => Themeprovider()),
        Provider<FirebaseHelper>(create: (_)=>FirebaseHelper( )),
        StreamProvider(create: (context)=> context.read<FirebaseHelper>().authState, initialData: null),



      ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthWrapper(),
    );
  }
}



class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasData) {
          return Naviga();
        } else {
          return Login();
        }
      },
    );
  }
}
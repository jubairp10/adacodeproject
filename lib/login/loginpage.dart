// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:hello/navigation/navigation.dart';
//
//
// import '../regi/registration.dart';
// import '../service/firebasehelper.dart';
//
// class Login extends StatefulWidget {
//
//
//   @override
//   State<Login> createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//
//
//   String? email;
//   String? password;
//   bool showpass = true;
//
//   var formkey = GlobalKey<FormState>();
//
//
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//
//   void showSnackbar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
//   }
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: Form(
//         key: formkey,
//         child: ListView(
//           children: [
//             SizedBox(height: 40),
//             Center(
//               child: Text(
//                 "Hello Again!",
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 30),
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               textAlign: TextAlign.center,
//               "Welcome Back You’ve\nbeen Missed!",
//               style: TextStyle(color: Colors.black),
//             ),
//             SizedBox(
//               height: 38,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 26, right: 26),
//               child: Container(
//                 height: 60,
//                 width: 377,
//                 child: TextFormField(
//                   controller: emailController,
//
//
//                   textInputAction: TextInputAction.next,
//                   style: TextStyle(color: Colors.black87),
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.grey[200],
//                     hintText: "Enter email",
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15),
//                         // borderSide: BorderSide(color: Colors.teal),
//                         borderSide: BorderSide(color: Colors.white)),
//                   ),
//                   validator:
//
//                   //     (email) {
//                   //   if (email!.isEmpty ||
//                   //       !email.contains("@") ||
//                   //       !email.contains(".com")) {
//                   //     return "Enter your email ";
//                   //   } else {
//                   //     return null;
//                   //   }
//                   //  }
//
//                       (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your email';
//                     }
//                     if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
//                       return 'Please enter a valid email';
//                     }
//                     return null;
//                   },
//
//                   onSaved: (eemail) {
//                     email = eemail;
//                   },
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Padding(
//                 padding: const EdgeInsets.only(left: 26, right: 26),
//                 child: Container(
//                   height: 60,
//                   width: 377,
//                   child: TextFormField(
//                     controller: passwordController,
//
//                     textInputAction: TextInputAction.next,
//                     style: TextStyle(color: Colors.black87),
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.grey[200],
//                       hintText: " Password",
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(15),
//                           borderSide: BorderSide(color: Colors.white)),
//                     ),
//                     validator: (password) {
//                       if (password!.isEmpty || password.length < 8) {
//                         return "Password eg Adacode@123";
//                       } else {
//                         return null;
//                       }
//                     },
//                     onSaved: (epass) {
//                       password = epass;
//                     },
//                   ),
//                 )),
//             SizedBox(height: 30),
//             Padding(
//               padding: const EdgeInsets.only(right: 25, left: 25),
//               child: InkWell(onTap: ()
//               async {
//                 if (formkey.currentState!.validate()) {
//                   User? user = await FirebaseHelper().signIn(
//                     emailController.text,
//                     passwordController.text,
//                   );
//                   if (user != null) {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) => Naviga()),
//                     );
//                   } else {
//                     showSnackbar('Login failed. Please check your credentials.');
//                   }
//                 }
//               } ,
//
//                 child: Container(
//                   height: 50,
//                   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                   decoration: BoxDecoration(
//                     color: Colors.teal,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Center(
//                       child: Text(
//                     "Login",
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   )),
//                 ),
//               ),
//             ),
//             SizedBox(height: 26),
//             Center(
//                 child: InkWell(
//                     onTap: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => Regi()));
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 100),
//                       child: Row(
//                         children: [
//                           Text(
//                             "Create a new Account ?",
//                             style: TextStyle(
//                               color: Colors.black87,
//                             ),
//                           ),
//                           Text(
//                             "SignUp ",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                           )
//                         ],
//                       ),
//                     ))),
//             SizedBox(height: 30),
//             Center(child: Text("OR")),
//             SizedBox(height: 50),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 45,
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   SizedBox(width: 7),
//                   Container(
//                     padding: EdgeInsets.all(5),
//                     height: 40,
//                     decoration: BoxDecoration(
//                         color: Colors.grey[200],
//                         borderRadius: BorderRadius.circular(10)),
//                     child: Row(
//                       children: [
//                         Image(
//                           image:
//                               AssetImage("assets/image/google-logo-9808.png"),
//                         ),
//                         Text(
//                           "   Google   ",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         )
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 93),
//                     child: Container(
//                       padding: EdgeInsets.all(5),
//                       height: 40,
//                       decoration: BoxDecoration(
//                           color: Colors.grey[200],
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Image(
//                             image: AssetImage("assets/image/pngwing.com.png"),
//                           ),
//                           Text(
//                             "   Apple  ",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//
// }


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../navigation/navigation.dart';
import '../regi/registration.dart';
import '../service/firebasehelper.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? email;
  String? password;
  bool showpass = true;

  var formkey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.white,

      body: Form(
        key: formkey,
        child: ListView(
          children: [
            SizedBox(height: 40.h),
            Center(
              child: Text(
                "Hello Again!",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              textAlign: TextAlign.center,
              "Welcome Back You’ve\nbeen Missed!",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 38.h),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Container(
                height: 60.h,
                width: 377.w,
                child: TextFormField(
                  controller: emailController,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: "Enter email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  onSaved: (eemail) {
                    email = eemail;
                  },
                ),
              ),
            ),
            SizedBox(height: 20.h),
            RPadding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Container(
                height: 60.h,
                width: 377.w,
                child: TextFormField(
                  controller: passwordController,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: " Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 8) {
                      return "Password eg Adacode@123";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (epass) {
                    password = epass;
                  },
                ),
              ),
            ),
            SizedBox(height: 30.h),
            RPadding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: InkWell(
                onTap: () async {
                  if (formkey.currentState!.validate()) {
                    User? user = await FirebaseHelper().signIn(
                      emailController.text,
                      passwordController.text,
                    );
                    if (user != null) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Naviga()),
                      );
                    } else {
                      showSnackbar('Login failed. Please check your credentials.');
                    }
                  }else{

                    showSnackbar("User already exists with this email");
                  }
                },
                child: Container(
                  height: 50.h,
                  margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                      )),
                ),
              ),
            ),
            SizedBox(height: 26.h),
            Center(
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Regi()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create a new Account ?",
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          "SignUp ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ))),
            SizedBox(height: 30.h),
            Center(child: Text("OR")),
            SizedBox(height: 50.h),
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 7.w),
                InkWell(
                  onTap: ()
                  async {
                    User? user = (await FirebaseHelper().signInWithGoogle()) as User?;
                    if (user != null) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Naviga()),
                      );
                    } else {
                      showSnackbar('Google Sign-In failed. Please try again.');
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/image/google-logo-9808.png"),
                        ),
                        Text(
                          "   Google   ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 25.w,),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(
                        image: AssetImage("assets/image/pngwing.com.png"),
                      ),
                      Text(
                        "   Apple  ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

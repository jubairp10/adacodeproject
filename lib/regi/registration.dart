
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hello/navigation/navigation.dart';
import 'package:provider/provider.dart';
import '../service/firebasehelper.dart';



class Regi extends StatefulWidget {
  @override
  State<Regi> createState() => _RegiState();
}

class _RegiState extends State<Regi> {







  String ? name1;

  String ? email;

  String ? password;

  bool showpass = true;

  var formkey = GlobalKey<FormState>();


  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();


  void showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  bool _isEmailValid(String email) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(email);
  }


  // @override
  // void initState() {
  //   super.initState();
  //   firebaseHelper = FirebaseHelper(); // Initialize your firebaseHelper here
  // }
  // @override
  // // void dispose() {
  // //  _emailcontroller.dispose();
  // //  _passwordcontroller.dispose();
  // //   super.dispose();
  // // }

  @override
  Widget build(BuildContext context) {
  return Scaffold(backgroundColor: Colors.white,

    appBar: AppBar(backgroundColor: Colors.white,leading: InkWell(onTap: (){
      Navigator.pop(context);
    },
        child: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black87,size: 25,)),),


    body: Form(
      key: formkey,
      child: ListView(

        children: [SizedBox(height: 40),

          Center(
            child: Text(
              "Hello Again!",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            "Welcome Back You’ve\nbeen Missed!",
            style: TextStyle(color: Colors.black),
          ),

      SizedBox(
        height: 40),

          Padding(
            padding: const EdgeInsets.only(right: 26,left: 26),
            child: Container(height: 67,width: 377,

              child: TextFormField(
                controller: namecontroller,

                textInputAction: TextInputAction.next,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: "Enter name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      // borderSide: BorderSide(color: Colors.teal),
                      borderSide: BorderSide(color: Colors.white)

                  ),
                ),

                validator:(name){

                  if (name!.isEmpty){
                    return "Enter your name";

                  }else{

                    return null;

                  }
                },

                onSaved: (ename){

                  name1 = ename;
                },




              ),
            ),
          ),

          SizedBox(height: 20),



          Padding(
            padding: const EdgeInsets.only(right: 26,left: 26),
            child: Container(
              height: 67,
              width: 377,
              child: TextFormField(
                controller: emailcontroller,

                textInputAction: TextInputAction.next,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: "Enter email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      // borderSide: BorderSide(color: Colors.teal),
                      borderSide: BorderSide(color: Colors.white)

                  ),
                ),

                validator:     (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!_isEmailValid(value)) {
                    return 'The email address is badly formatted';
                  }
                  return null;
                },

                onSaved: (eemail){

                  email = eemail;
                },


              ),
            ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(right: 26,left: 26),
            child: Container(height: 67,width: 377,
              child: TextFormField(
                controller: passwordcontroller,

                textInputAction: TextInputAction.next,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: " Enter password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white)),
                ),


                validator: (password){
                  if (password!.isEmpty || password.length <8 ){

                    return "Password eg Adacode@123";
                  } else{

                    return null;
                  }
                },
                onSaved: (epass){

                  password = epass;
                },


              ),
            ),
          ),
          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.only(right: 25, left: 25),
            child: InkWell(

              onTap:() async{
                if (formkey.currentState!.validate())
                {
                  formkey.currentState!.save();
                  await context.read<FirebaseHelper>()
                      .signUp(name: name1!,email: email!, pasword: password!, context:context, )
                      .then((value) {
                    if (value == null) {
                      Get.to(Naviga());
                    } else {
                      Get.snackbar(
                          "Error", "User not found $value");
                    }
                  });
                }
              },


              child: Container(height: 50,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10)
                ,
                decoration: BoxDecoration(color: Colors.teal,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Center(child: Text("Register",
                  style: TextStyle(color: Colors.white, fontSize: 20),)),

              ),
            ),
          ),
          SizedBox(height: 50),


          Padding(
            padding: const EdgeInsets.only(left: 45,),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [SizedBox(width: 7),
                Container(padding: EdgeInsets.all(5),
                  height: 40,

                  decoration:
                  BoxDecoration(color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(
                            "assets/image/google-logo-9808.png"),
                      ),
                      Text("   Google   ", style: TextStyle

                        (fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 93),
                  child: Container(padding: EdgeInsets.all(5),
                    height: 40,


                    decoration:
                    BoxDecoration(color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: AssetImage(
                              "assets/image/pngwing.com.png"),
                        ),
                        Text("   Apple  ", style: TextStyle

                          (fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),


        ],

      ),
    ),



  );
  }

  // void signUpUser() async {
  //   print("Signing up user...");
  //   try {
  //     await context.read<Firebaseauth_method>().Signupemail(
  //       email: _emailcontroller.text,
  //       password: _passwordcontroller.text,
  //       name: _namecontroller.text,
  //       context: context,
  //     );
  //
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => Naviga()));
  //     print("Sign up successful!");
  //   } catch (e) {
  //     print("Error during sign up: $e");
  //   }
  // }

}

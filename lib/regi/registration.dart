
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Regi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(backgroundColor: Colors.white,

    appBar: AppBar(backgroundColor: Colors.white,leading: InkWell(onTap: (){
      Navigator.pop(context);
    },
        child: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black87,size: 25,)),),


    body: ListView(

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
            ),
          ),
        ),

        SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.only(right: 26,left: 26),
          child: Container(height: 67,width: 377,
            child: TextFormField(
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
            ),
          ),
        ),
        SizedBox(height: 30),

        Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: InkWell(


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



  );
  }
}

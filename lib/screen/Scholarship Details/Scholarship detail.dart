import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Scholarship extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
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
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            "Scholarship Details",
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
                    'assets/image/download (8).jpeg',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 4),
            child: Text(
              "Fill out this form",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5,bottom: 25),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text(
                    "The candidate should have 50 or above\npercentage of mark\nin their exams.",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 5),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5,bottom: 10),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Should have original documents\n( Recent exam marklist, Adhaar Card )",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                )
              ],
            ),
          ),


          SizedBox(height: 5),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5,),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,bottom: 5),
                  child: Text(
                    "Acknowledge letter from gaurdian",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                )
              ],
            ),
          ),




          SizedBox(height: 5),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5,),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,bottom: 5),
                  child: Text(
                    "Acknowledge letter from school / collage",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 13),

          Padding(
            padding: const EdgeInsets.only(left: 15,right: 20),
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,border: Border.all(),),
              height: 61,
              width: 375,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Select Board",
                    border: InputBorder.none,


                    ),
                  ),
              ),
              ),
          ),

          SizedBox(height: 15),


          Padding(
            padding: const EdgeInsets.only(left: 15,right: 20),
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,border: Border.all(),),
              height: 61,
              width: 375,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Mark in percentage",
                    border: InputBorder.none,


                  ),
                ),
              ),
            ),
          ),


          SizedBox(height: 15),


          Padding(
            padding: const EdgeInsets.only(left: 15,right: 20),
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,border: Border.all(),),
              height: 61,
              width: 375,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Year of passout",
                    border: InputBorder.none,


                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 15),


          Padding(
            padding: const EdgeInsets.only(left: 15,right: 20),
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,border: Border.all(),),
              height: 61,
              width: 375,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Collage / School name",
                    border: InputBorder.none,


                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20
          ),

          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: InkWell(


              child: Container(height: 52,width: 363,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10)
                ,
                decoration: BoxDecoration(color: Colors.teal,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Center(child: Text("Apply Now",
                  style: TextStyle(color: Colors.white, fontSize: 20),)),

              ),
            ),
          ),

          Text(" "),






        ],
      ),
    );
  }
}

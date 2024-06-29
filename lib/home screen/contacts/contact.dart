import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:link_text/link_text.dart';

import '../../navigation/navigation.dart';



class contact extends StatefulWidget {
  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Naviga()));
          },
          child: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black87,
            size: 25,
          ),
        ),
        title: Text(
          "Contact us",
          style: TextStyle(color: Colors.black87, fontSize: 24),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 4),
            child: Text(
              "Let's Talk",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 13),
            child: Text(
              "We would love to hear from you, Please describe \nyour queries and  we will respond asap!",
              style: TextStyle(color: Colors.black87, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 18,
              top: 10,
            ),
            child: Text(
              "Subject",
              style: TextStyle(color: Colors.black87, fontSize: 14),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
              height: 54,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 10),
            child: Text(
              "Describe it here",
              style: TextStyle(color: Colors.black87, fontSize: 14),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
              height: 252,
              width: 380,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 57,
                width: 165,
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.teal),
                child: Center(
                  child: Text(
                    "Send",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 10),
            child: Text(
              "Having Trouble ?",
              style: TextStyle(color: Colors.black87, fontSize: 14),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.teal)),
              height: 146,
              width: 396,
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child:
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.phone,color: Colors.black87,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("+91 994 727 6566\n+91 837 302 7306",style: TextStyle(color: Colors.black87,fontSize: 12),),
                          ),
                          SizedBox(width: 10),
                          Text("Mon-Saturday 9:30 - 5:30",style: TextStyle(color: Colors.black87,fontSize: 12),)
                        ],
                        
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.email_outlined,color: Colors.black87,),
                          ),



      Linkify(
        onOpen: (link) => print("Clicked ${link.url}!"),
        text: "mail@adacodesolutions.com",
      ),

                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:FaIcon(FontAwesomeIcons.globe,color: Colors.black87,)
                          ),



                          Linkify(
                            onOpen: (link) => print("Clicked ${link.url}!"),
                            text: "www.adacodesolutions.com",
                          ),

                        ],
                      ),
                    ],
                  ),
              ),
            ),
          ),

          Text(' '),

        ],
      ),
    );
  }
}

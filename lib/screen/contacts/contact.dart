// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_linkify/flutter_linkify.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../../navigation/navigation.dart';
//
// class Contact extends StatefulWidget {
//   @override
//   State<Contact> createState() => _ContactState();
// }
//
// class _ContactState extends State<Contact> {
//
//   var subject_controller=TextEditingController();
//   var describe_controller=TextEditingController();
//
//   late CollectionReference _contactusreference;
//
//   @override
//   void initState() {
//     _contactusreference = FirebaseFirestore.instance.collection("contactus");
//     super.initState();
//   }
//
//   Future<void> _onOpen(LinkableElement link) async {
//     if (await canLaunch(link.url)) {
//       await launch(link.url);
//     } else {
//       throw 'Could not launch $link';
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: InkWell(
//           onTap: () {
//             Navigator.pop(context)  ;
//           },
//           child: Icon(
//             Icons.arrow_back_ios_new_sharp,
//             color: Colors.black87,
//             size: 25,
//           ),
//         ),
//         title: Text(
//           "Contact us",
//           style: TextStyle(color: Colors.black87, fontSize: 24),
//         ),
//       ),
//       body: ListView(
//         children: [
//           SizedBox(height: 18),
//           Padding(
//             padding: const EdgeInsets.only(left: 17, top: 4),
//             child: Text(
//               "Let's Talk",
//               style: TextStyle(
//                   color: Colors.black87,
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 10, right: 10, left: 13),
//             child: Text(
//               "We would love to hear from you, Please describe \nyour queries and we will respond asap!",
//               style: TextStyle(color: Colors.black87, fontSize: 15),
//             ),
//           ),
//           SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.only(left: 18, top: 10),
//             child: Text(
//               "Subject",
//               style: TextStyle(color: Colors.black87, fontSize: 14),
//             ),
//           ),
//           SizedBox(height: 5),
//           Padding(
//             padding: const EdgeInsets.only(left: 15, right: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.grey[100],
//                   ),
//                   height: 54,
//                   width: double.infinity,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 10),
//                     child: TextFormField(controller: subject_controller,
//                       style: TextStyle(color: Colors.black87),
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 5),
//
//                 // Text(
//                 //   "Please provide a brief subject for your query.",
//                 //   style: TextStyle(color: Colors.black87, fontSize: 12),
//                 // ),
//               ],
//             ),
//           ),
//           SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.only(left: 18, top: 10),
//             child: Text(
//               "Describe it here",
//               style: TextStyle(color: Colors.black87, fontSize: 14),
//             ),
//           ),
//           SizedBox(height: 5),
//           Padding(
//             padding: const EdgeInsets.only(left: 15, right: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.grey[100],
//                   ),
//                   height: 252,
//                   width: double.infinity,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 10),
//                     child: TextFormField(controller: describe_controller,
//                       maxLines: null,
//                       expands: true,
//                       style: TextStyle(color: Colors.black87),
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   "Describe your query or issue in detail.",
//                   style: TextStyle(color: Colors.black87, fontSize: 12),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               InkWell(onTap: adduser,
//                 child: Container(
//                   height: 57,
//                   width: 165,
//                   margin: EdgeInsets.symmetric(horizontal: 20),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: Colors.teal),
//                   child: Center(
//                     child: Text(
//                       "Send",
//                       style: TextStyle(color: Colors.white, fontSize: 16),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.only(left: 18, top: 10),
//             child: Text(
//               "Having Trouble?",
//               style: TextStyle(color: Colors.black87, fontSize: 14),
//             ),
//           ),
//           SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.only(left: 15, right: 20),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.grey[100],
//                 border: Border.all(color: Colors.teal),
//               ),
//               height: 146,
//               width: double.infinity,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 5, right: 5),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Icon(Icons.phone, color: Colors.black87),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             "+91 994 727 6566\n+91 837 302 7306",
//                             style: TextStyle(color: Colors.black87, fontSize: 12),
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         Text(
//                           "Mon-Saturday 9:30 - 5:30",
//                           style: TextStyle(color: Colors.black87, fontSize: 12),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Icon(Icons.email_outlined, color: Colors.black87),
//                         ),
//                         Expanded(
//                           child: Linkify(
//                             onOpen: _onOpen,
//                             text: "mailto:mail@adacodesolutions.com",
//                             options: LinkifyOptions(humanize: false),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: FaIcon(FontAwesomeIcons.globe, color: Colors.black87),
//                         ),
//                         Expanded(
//                           child: Linkify(
//                             onOpen: _onOpen,
//                             text: "https://www.adacodesolutions.com",
//                             options: LinkifyOptions(humanize: false),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//
//   Future<void>adduser()
//
//   async{
//
//     return _contactusreference.add({
//
//       "subject":subject_controller.text,
//
//       "describe":describe_controller.text,
//
//
//
//     }).then((value){
//       showSnackbar('your complaint is registred ,we will contact you !');
//       print("your complaint is registred ,we will contact you !");
//
//
//       subject_controller.clear();
//       describe_controller.clear();
//
//
//
//     }).catchError((error)
//     {
//       showSnackbar('failed');
//       print("failed the complaint  $error");
//
//     }
//     );
//
//   } void showSnackbar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.teal,content: Text(message,style: TextStyle(color: Colors.white),)));
//   }
//
// }


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_linkify/flutter_linkify.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../../navigation/navigation.dart';
//
// class Contact extends StatefulWidget {
//   @override
//   State<Contact> createState() => _ContactState();
// }
//
// class _ContactState extends State<Contact> {
//   var subjectController = TextEditingController();
//   var describeController = TextEditingController();
//
//   late CollectionReference _contactUsReference;
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   void initState() {
//     _contactUsReference = FirebaseFirestore.instance.collection("contactus");
//     super.initState();
//   }
//
//   Future<void> _onOpen(LinkableElement link) async {
//     if (await canLaunch(link.url)) {
//       await launch(link.url);
//     } else {
//       throw 'Could not launch $link';
//     }
//   }
//
//   Future<void> addUser() async {
//     if (_formKey.currentState!.validate()) {
//       return _contactUsReference.add({
//         "subject": subjectController.text,
//         "describe": describeController.text,
//       }).then((value) {
//         showSnackbar('Your complaint is registered, we will contact you!');
//         print("Your complaint is registered, we will contact you!");
//         subjectController.clear();
//         describeController.clear();
//         Future.delayed(Duration(seconds:1),(){
//           _launchMailClient();
//         }
//         );
//         // Navigate to the mail link
//       }).catchError((error) {
//         showSnackbar('Failed to register complaint');
//         print("Failed to register complaint $error");
//       });
//     } else {
//       showSnackbar('Please fill in all fields');
//     }
//   }
//
//   void showSnackbar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         backgroundColor: Colors.teal,
//         content: Text(
//           message,
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }
//
//   void _launchMailClient() async {
//     final Uri emailLaunchUri = Uri(
//       scheme: 'mailto',
//       path: 'mail@adacodesolutions.com',
//       queryParameters: {
//         'subject': subjectController.text,
//         'body': describeController.text,
//       },
//     );
//
//     if (await canLaunch(emailLaunchUri.toString())) {
//       await launch(emailLaunchUri.toString());
//     } else {
//       showSnackbar('Could not open mail client');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: Colors.white,
//         leading: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: Icon(
//             Icons.arrow_back_ios_new_sharp,
//             color: Colors.black87,
//             size: 25,
//           ),
//         ),
//         title: Text(
//           "Contact us",
//           style: TextStyle(color: Colors.black87, fontSize: 24),
//         ),
//       ),
//       body: Form(
//         key: _formKey,
//         child: ListView(
//           children: [
//             SizedBox(height: 18),
//             Padding(
//               padding: const EdgeInsets.only(left: 17, top: 4),
//               child: Text(
//                 "Let's Talk",
//                 style: TextStyle(
//                   color: Colors.black87,
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 10, right: 10, left: 13),
//               child: Text(
//                 "We would love to hear from you. Please describe your queries and we will respond ASAP!",
//                 style: TextStyle(color: Colors.black87, fontSize: 15),
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.only(left: 18, top: 10),
//               child: Text(
//                 "Subject",
//                 style: TextStyle(color: Colors.black87, fontSize: 14),
//               ),
//             ),
//             SizedBox(height: 5),
//             Padding(
//               padding: const EdgeInsets.only(left: 15, right: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.grey[100],
//                     ),
//                     height: 54,
//                     width: double.infinity,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10, right: 10),
//                       child: TextFormField(
//                         controller: subjectController,
//                         style: TextStyle(color: Colors.black87),
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter a subject';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.only(left: 18, top: 10),
//               child: Text(
//                 "Describe it here",
//                 style: TextStyle(color: Colors.black87, fontSize: 14),
//               ),
//             ),
//             SizedBox(height: 5),
//             Padding(
//               padding: const EdgeInsets.only(left: 15, right: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.grey[100],
//                     ),
//                     height: 252,
//                     width: double.infinity,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10, right: 10),
//                       child: TextFormField(
//                         controller: describeController,
//                         maxLines: null,
//                         expands: true,
//                         style: TextStyle(color: Colors.black87),
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please describe your issue';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     "Describe your query or issue in detail.",
//                     style: TextStyle(color: Colors.black87, fontSize: 12),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 InkWell(
//                   onTap: addUser,
//                   child: Container(
//                     height: 57,
//                     width: 165,
//                     margin: EdgeInsets.symmetric(horizontal: 20),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       color: Colors.teal,
//                     ),
//                     child: Center(
//                       child: Text(
//                         "Send",
//                         style: TextStyle(color: Colors.white, fontSize: 16),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.only(left: 18, top: 10),
//               child: Text(
//                 "Having Trouble?",
//                 style: TextStyle(color: Colors.black87, fontSize: 14),
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.only(left: 15, right: 20),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.grey[100],
//                   border: Border.all(color: Colors.teal),
//                 ),
//                 height: 146,
//                 width: double.infinity,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 5, right: 5),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Icon(Icons.phone, color: Colors.black87),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                               "+91 994 727 6566\n+91 837 302 7306",
//                               style: TextStyle(color: Colors.black87, fontSize: 12),
//                             ),
//                           ),
//                           SizedBox(width: 10),
//                           Text(
//                             "Mon-Saturday 9:30 - 5:30",
//                             style: TextStyle(color: Colors.black87, fontSize: 12),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Icon(Icons.email_outlined, color: Colors.black87),
//                           ),
//                           Expanded(
//                             child: Linkify(
//                               onOpen: _onOpen,
//                               text: "mailto:mail@adacodesolutions.com",
//                               options: LinkifyOptions(humanize: false),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: FaIcon(FontAwesomeIcons.globe, color: Colors.black87),
//                           ),
//                           Expanded(
//                             child: Linkify(
//                               onOpen: _onOpen,
//                               text: "https://www.adacodesolutions.com",
//                               options: LinkifyOptions(humanize: false),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../navigation/navigation.dart';

class Contact extends StatefulWidget {
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  var subjectController = TextEditingController();
  var describeController = TextEditingController();

  late CollectionReference _contactUsReference;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _contactUsReference = FirebaseFirestore.instance.collection("contactus");
    super.initState();
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }

  Future<void> addUser() async {
    if (_formKey.currentState!.validate()) {
      await _contactUsReference.add({
        "subject": subjectController.text,
        "describe": describeController.text,
      }).then((value) {
        showSnackbar('Your complaint is registered, we will contact you!');
        print("Your complaint is registered, we will contact you!");
        subjectController.clear();
        describeController.clear();
        _launchMailClient();
      }).catchError((error) {
        showSnackbar('Failed to register complaint');
        print("Failed to register complaint $error");
      });
    } else {
      showSnackbar('Please fill in all fields');
    }
  }

  void showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.teal,
        content: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void _launchMailClient() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'mail@adacodesolutions.com',
      query: Uri(
        queryParameters: {
          'subject': subjectController.text,
          'body': describeController.text,
        },
      ).query,
    );

    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString());
    } else {
      showSnackbar('Could not open mail client');
    }
  }

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
            Navigator.pop(context);
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
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 4),
              child: Text(
                "Let's Talk",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 13),
              child: Text(
                "We would love to hear from you. Please describe your queries and we will respond ASAP!",
                style: TextStyle(color: Colors.black87, fontSize: 15),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 10),
              child: Text(
                "Subject",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[100],
                    ),
                    height: 54,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        controller: subjectController,
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a subject';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
            SizedBox(height: 10),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[100],
                    ),
                    height: 252,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        controller: describeController,
                        maxLines: null,
                        expands: true,
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please describe your issue';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Describe your query or issue in detail.",
                    style: TextStyle(color: Colors.black87, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: addUser,
                  child: Container(
                    height: 57,
                    width: 165,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.teal,
                    ),
                    child: Center(
                      child: Text(
                        "Send",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 10),
              child: Text(
                "Having Trouble?",
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
                  border: Border.all(color: Colors.teal),
                ),
                height: 146,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.phone, color: Colors.black87),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "+91 994 727 6566\n+91 837 302 7306",
                              style: TextStyle(color: Colors.black87, fontSize: 12),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Mon-Saturday 9:30 - 5:30",
                            style: TextStyle(color: Colors.black87, fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.email_outlined, color: Colors.black87),
                          ),
                          Expanded(
                            child: Linkify(
                              onOpen: _onOpen,
                              text: "mailto:mail@adacodesolutions.com",
                              options: LinkifyOptions(humanize: false),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FaIcon(FontAwesomeIcons.globe, color: Colors.black87, size: 20),
                          ),
                          Expanded(
                            child: Linkify(
                              onOpen: _onOpen,
                              text: "https://adacodesolutions.com",
                              options: LinkifyOptions(humanize: false),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


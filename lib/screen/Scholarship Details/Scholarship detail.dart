// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
//
// class Scholarship extends StatefulWidget {
//   @override
//   State<Scholarship> createState() => _ScholarshipState();
// }
//
// class _ScholarshipState extends State<Scholarship> {
//
//
//   var board_controller=TextEditingController();
//   var mark_controller=TextEditingController();
//   var passout_controller=TextEditingController();
//   var schoolname_controller=TextEditingController();
//   late CollectionReference _scholarshipcollection;
//
//   @override
//   void initState() {
//
//
//     _scholarshipcollection = FirebaseFirestore.instance.collection("scholarship");
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
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
//         title: Padding(
//           padding: const EdgeInsets.only(left: 50),
//           child: Text(
//             "Scholarship Details",
//             style: TextStyle(color: Colors.black87, fontSize: 20),
//           ),
//         ),
//       ),
//       body: ListView(
//         children: [
//           SizedBox(height: 5),
//           Padding(
//             padding: const EdgeInsets.only(right: 15, left: 15),
//             child: Container(
//               height: 219,
//               width: 395,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 image: DecorationImage(
//                   fit: BoxFit.fill,
//                   image: AssetImage(
//                     'assets/gif/4e87af36-57a4-4299-aafa-da36983e0025.gif',
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 5),
//           Padding(
//             padding: const EdgeInsets.only(left: 17, top: 4),
//             child: Text(
//               "Fill out this form",
//               style: TextStyle(
//                   color: Colors.black87,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(height: 5),
//
//
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 5,bottom: 25),
//                   child: Icon(
//                     Icons.check_circle,
//                     color: Colors.green,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10,top: 10),
//                   child: Text(
//                     "The candidate should have 50 or above\npercentage of mark\nin their exams.",
//                     style: TextStyle(color: Colors.black87, fontSize: 16),
//                   ),
//                 )
//               ],
//             ),
//           ),
//
//           SizedBox(height: 5),
//
//
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 5,bottom: 10),
//                   child: Icon(
//                     Icons.check_circle,
//                     color: Colors.green,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Text(
//                     "Should have original documents\n( Recent exam marklist, Adhaar Card )",
//                     style: TextStyle(color: Colors.black87, fontSize: 16),
//                   ),
//                 )
//               ],
//             ),
//           ),
//
//
//           SizedBox(height: 5),
//
//
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 5,),
//                   child: Icon(
//                     Icons.check_circle,
//                     color: Colors.green,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10,bottom: 5),
//                   child: Text(
//                     "Acknowledge letter from gaurdian",
//                     style: TextStyle(color: Colors.black87, fontSize: 16),
//                   ),
//                 )
//               ],
//             ),
//           ),
//
//
//
//
//           SizedBox(height: 5),
//
//
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 5,),
//                   child: Icon(
//                     Icons.check_circle,
//                     color: Colors.green,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10,bottom: 5),
//                   child: Text(
//                     "Acknowledge letter from school / collage",
//                     style: TextStyle(color: Colors.black87, fontSize: 16),
//                   ),
//                 )
//               ],
//             ),
//           ),
//
//           SizedBox(height: 13),
//
//           Padding(
//             padding: const EdgeInsets.only(left: 15,right: 20),
//             child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,border: Border.all(),),
//               height: 61,
//               width: 375,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10,right: 10),
//                 child: TextFormField(controller:board_controller ,
//                   textInputAction: TextInputAction.next,
//                   style: TextStyle(color: Colors.black87),
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: "Select Board",
//                     border: InputBorder.none,
//
//
//                     ),
//                   ),
//               ),
//               ),
//           ),
//
//           SizedBox(height: 15),
//
//
//           Padding(
//             padding: const EdgeInsets.only(left: 15,right: 20),
//             child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,border: Border.all(),),
//               height: 61,
//               width: 375,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10,right: 10),
//                 child: TextFormField(controller: mark_controller,
//                   textInputAction: TextInputAction.next,
//                   style: TextStyle(color: Colors.black87),
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: "Mark in percentage",
//                     border: InputBorder.none,
//
//
//                   ),
//                 ),
//               ),
//             ),
//           ),
//
//
//           SizedBox(height: 15),
//
//
//           Padding(
//             padding: const EdgeInsets.only(left: 15,right: 20),
//             child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,border: Border.all(),),
//               height: 61,
//               width: 375,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10,right: 10),
//                 child: TextFormField(controller: passout_controller,
//                   textInputAction: TextInputAction.next,
//                   style: TextStyle(color: Colors.black87),
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: "Year of passout",
//                     border: InputBorder.none,
//
//
//                   ),
//                 ),
//               ),
//             ),
//           ),
//
//           SizedBox(height: 15),
//
//
//           Padding(
//             padding: const EdgeInsets.only(left: 15,right: 20),
//             child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,border: Border.all(),),
//               height: 61,
//               width: 375,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10,right: 10),
//                 child: TextFormField(controller: schoolname_controller,
//                   textInputAction: TextInputAction.next,
//                   style: TextStyle(color: Colors.black87),
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: "Collage / School name",
//                     border: InputBorder.none,
//
//
//                   ),
//                 ),
//               ),
//             ),
//           ),
//
//           SizedBox(
//             height: 20
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(right: 15, left: 15),
//             child: InkWell(onTap: adduser,
//
//               child: Container(height: 52,width: 363,
//                 margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10)
//                 ,
//                 decoration: BoxDecoration(color: Colors.teal,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//
//                 child: Center(child: Text("Apply Now",
//                   style: TextStyle(color: Colors.white, fontSize: 20),)),
//
//               ),
//             ),
//           ),
//
//           Text(" "),
//
//
//
//
//
//
//         ],
//       ),
//     );
//   }
//
//   Future<void>adduser()
//
// async{
//
//     return _scholarshipcollection.add({
//
//       "board":board_controller.text,
//
//       "mark":mark_controller.text,
//
//       "passout ": passout_controller.text,
//
//       'schoolname': schoolname_controller.text,
//
//
//     }).then((value){
//       showSnackbar('Succssefully');
//       print("user added succesfuly");
//
//
//       board_controller.clear();
//       mark_controller.clear();
//       mark_controller.clear();
//       passout_controller.clear();
//       schoolname_controller.clear();
//
//
//     }).catchError((error)
//         {
//           showSnackbar('failed');
//           print("failed to add user $error");
//
//         }
//     );
//
// } void showSnackbar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scholarship extends StatefulWidget {
  @override
  State<Scholarship> createState() => _ScholarshipState();
}

class _ScholarshipState extends State<Scholarship> {
  var boardController = TextEditingController();
  var markController = TextEditingController();
  var passoutController = TextEditingController();
  var schoolnameController = TextEditingController();
  late CollectionReference _scholarshipCollection;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _scholarshipCollection = FirebaseFirestore.instance.collection("scholarship");
    super.initState();
  }

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
      body: Form(
        key: _formKey,
        child: ListView(
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
                      'assets/gif/4e87af36-57a4-4299-aafa-da36983e0025.gif',
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
                    padding: const EdgeInsets.only(left: 5, bottom: 25),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
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
                    padding: const EdgeInsets.only(left: 5, bottom: 10),
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
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 5),
                    child: Text(
                      "Acknowledge letter from guardian",
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
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 5),
                    child: Text(
                      "Acknowledge letter from school / college",
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(),
                ),
                height: 61,
                width: 375,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: boardController,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Select Board",
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your board';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(),
                ),
                height: 61,
                width: 375,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: markController,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Mark in percentage",
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your marks';
                      }
                      if (double.tryParse(value) == null) {
                        return 'Please enter a valid number';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(),
                ),
                height: 61,
                width: 375,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: passoutController,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Year of passout",
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your year of passout';
                      }
                      if (int.tryParse(value) == null) {
                        return 'Please enter a valid year';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(),
                ),
                height: 61,
                width: 375,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: schoolnameController,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "College / School name",
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your school/college name';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: InkWell(
                onTap: addUser,
                child: Container(
                  height: 52,
                  width: 363,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Apply Now",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> addUser() async {
    if (_formKey.currentState!.validate()) {
      return _scholarshipCollection.add({
        "board": boardController.text,
        "mark": markController.text,
        "passout": passoutController.text,
        'schoolname': schoolnameController.text,
      }).then((value) {
        showSnackbar('Successfully added');
        print("User added successfully");
        boardController.clear();
        markController.clear();
        passoutController.clear();
        schoolnameController.clear();
        Future.delayed(Duration(seconds:2),(){
          Navigator.pop(context);
        }
        );
      }).catchError((error) {
        showSnackbar('Failed to add user');
        print("Failed to add user $error");
      });
    } else {
      showSnackbar('Please fill in all fields correctly');
    }
  }

  void showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message),
    duration: Duration(
      seconds: 2
    ),));
  }
}

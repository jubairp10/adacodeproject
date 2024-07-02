//
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hello/service/snackbar.dart';
//
// import '../login/loginpage.dart';
// import '../navigation/navigation.dart';
//
// class Firebaseauth_method{
//
//
//   final FirebaseAuth _auth;
//
//   Firebaseauth_method(this._auth,);
//
//
//   User get user => _auth.currentUser!; //
//
//   //State persistence
//   Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();
//
//
//
//   //Email Signup
//   Future<void> Signupemail({
//     required String email,
//     required String password,
//     required String name,
//     required BuildContext
//     context, //use to display like a snack bar items & Firestore (provider)
//   }) async {
//     try {
//       await _auth.createUserWithEmailAndPassword(
//           email: email,
//           password: password);
//
//       await _auth.currentUser!.updateProfile(displayName: name);
//
//       // await sendEmailVerification(context);
//     } on FirebaseAuthException catch (e) {
//       showSnackBar(context, e.message!);
//     }
//   }
//
//
//
// //Email login
//   Future<void> loginWithEmail({
//     required String email,
//     required String password,
//     required BuildContext context,
//   }) async {
//     try {
//       await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       if (_auth.currentUser!.emailVerified) {
//         // User is verified, navigate to the home page
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) =>
//                     Naviga())); // Replace '/home' with your actual home page route
//       }
//       // else {
//       //   // User not verified, send an email verification
//       //   await sendEmailVerification(context);
//       // }
//     } on FirebaseAuthException catch (e) {
//       showSnackBar(context, e.message!); // Displaying the error message
//     }
//   }
//
//   // Future<void> sendEmailVerification(BuildContext context) async {
//   //   try {
//   //     _auth.currentUser!.sendEmailVerification();
//   //     showSnackBar(context, 'Email verification sent!');
//   //   } on FirebaseAuthException catch (e) {
//   //     showSnackBar(context, e.message!); // Display error message
//   //   }
//   // }
//
//   // Sign out
//   Future<void> signOut(BuildContext context) async {
//     try {
//       await _auth.signOut();
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => Login()));
//     } on FirebaseAuthException catch (e) {
//       showSnackBar(context, e.message!); // Displaying the error message
//     }
//   }
//
//   // Delete account
//   Future<void> deleteAccount(BuildContext context) async {
//     try {
//       await _auth.currentUser!.delete();
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => Login()));
//     } on FirebaseAuthException catch (e) {
//       showSnackBar(context, e.message!);
//       // Displaying the error message
//       // if an error of requires-recent-login is thrown, make sure to log
//       // in user again and then delete account.
//     }
//   }
// }
//


//
// import 'package:firebase_auth/firebase_auth.dart';
//
// class FireHelper1{
//   final FirebaseAuth auth = FirebaseAuth.instance;
//
//   get user => auth.currentUser;
//   Future<String?>signUp({required String mail, required String pasword}) async {
//     try {
//       await auth.createUserWithEmailAndPassword(
//           email: mail, password: pasword);
//       return null;
//     } on FirebaseAuthException
//     catch (e) {
//       return e.message;
//     }
//
//   }
//
//   signIn({required String mail, required String pasword}) async {
//
//     try {
//       await auth.signInWithEmailAndPassword(email: mail, password: pasword);
//       return null;
//     } on FirebaseAuthException catch (e) {
//       return e.message;
//     }
//   }
//   Future<void>signOut() async {
//     await auth.signOut();
//   }
//
//
//
// }



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FirebaseHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;





  User get user => _auth.currentUser!; //

  //State persistence
  Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();

  // Sign In
  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Register
  // Future<User?> register(String email, String password, String name) async {
  //   try {
  //     UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //     User? user = userCredential.user;
  //     if (user != null) {
  //       await user.updateDisplayName(name);
  //       await user.reload();
  //       return _auth.currentUser;
  //     }
  //   }
  //   on FirebaseAuthException catch (e) {
  //     if (e.code == 'email-already-in-use') {
  //       Get.snackbar('Error', 'The account already exists for that email.');
  //     } else if (e.code == 'invalid-email') {
  //       Get.snackbar('Error', 'The email address is badly formatted.');
  //     } else if (e.code == 'weak-password') {
  //       Get.snackbar('Error', 'The password provided is too weak.');
  //     } else {
  //       Get.snackbar('Error', e.message ?? 'An unknown error occurred.');
  //     }
  //   }
  //   catch (e) {
  //     Get.snackbar('Error', 'An unknown error occurred.');
  //   }
  //   return null;
  // }
  final FirebaseAuth auth = FirebaseAuth.instance;

  // get user => auth.currentUser;
  Future<String?>signUp(  {required String name,required String email, required String pasword,required BuildContext context,}) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: pasword);
      await _auth.currentUser!.updateProfile(displayName: name);
      return null;
    } on FirebaseAuthException
    catch (e) {
 Get.snackbar(
      'Error',e.message!);
    }

  }




  // Sign Out
  Future<void> signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Get Current User
  User? getCurrentUser() {
    return _auth.currentUser;


  }
}

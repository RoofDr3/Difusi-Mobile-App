// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class AuthServices {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future signUpUser({required email, required password, required name}) async {
//     var res = "some error occured";
//     try {
//       if (email.isNotEmpty || password.isNotEmpty || name.isNotEmpty) {
//         UserCredential credential = await _auth.createUserWithEmailAndPassword(
//             email: email, password: password);
//         await _firestore
//             .collection("users")
//             .doc(credential.user!.uid)
//             .set({'name': name, 'email': email, 'uid': credential.user!.uid});
//         res = "Successfully";
//       }
//     } catch (e) {
//       return e.toString();
//     }
//     return res;
//   }

//   // ignore: non_constant_identifier_names
//   Future LoginUser({required email, required password}) async {
//     var res = "some error occured";
//     try {
//       if (email.isNotEmpty || password.isNotEmpty) {
//         await _auth.signInWithEmailAndPassword(
//             email: email, password: password);
//         res = 'success';
//       } else {
//         res = "Please enter all the field";
//       }
//     } catch (e) {
//       return e.toString();
//     }
//     return res;
//   }
// }

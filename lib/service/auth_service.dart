import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // login

  // register

  Future registerUserWithEmailAndPassword(
      String fullName, String email, String password) async {
    try {
      User user = (await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (user != null) {
        // call out database service to update user data
        return true;
      }

    } on FirebaseAuthException catch (e) {
      print(e.toString());
    }
  }

// sign-out
}
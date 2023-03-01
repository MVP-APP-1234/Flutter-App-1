import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _auth;
  AuthProvider(this._auth);

  Stream<User?> stream() => _auth.authStateChanges();

  Future signIn(String email, String password) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      // ignore: avoid_print
      return Future.value('');
    } on FirebaseAuthException catch (e) {
      return Future.value(e.message);
    }
  }

  Future<void> googleSignIn() async {
    try {
      final isSigned = await GoogleSignIn().isSignedIn();
      if (isSigned) await GoogleSignIn().signOut();
      final result = await GoogleSignIn().signIn();
      // ignore: avoid_print
      if (result == null) return print('Error while signing in');
      final credential = await result.authentication;
      await _auth.signInWithCredential(GoogleAuthProvider.credential(
          idToken: credential.idToken, accessToken: credential.accessToken));
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e.message);
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}

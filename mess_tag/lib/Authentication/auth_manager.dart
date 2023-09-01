import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
//import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential?> signInWithGoogle() async {
  GoogleAuthProvider googleProvider = GoogleAuthProvider();
  googleProvider.addScope('https://www.googleapis.com/auth/userinfo.email');
  if (kIsWeb) {
    return await FirebaseAuth.instance.signInWithPopup(googleProvider);
  } else {
    return await FirebaseAuth.instance.signInWithProvider(googleProvider);
    // Trigger the authentication flow
/*    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
    await googleUser?.authentication;
    if (googleAuth != null) {
      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      var userCredentials =
      await FirebaseAuth.instance.signInWithCredential(credential);
      // Once signed in, return the UserCredential
      return userCredentials;
    }*/
    throw Exception("Auth unavailable");
  }
}

Future<void> signOut() async {
  // (await GoogleSignIn().signOut());
  return FirebaseAuth.instance.signOut();
}
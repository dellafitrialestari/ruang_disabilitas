import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDfTbDH3kKBrZmSXE4g49Xyy2_BJhOwbRQ",
            authDomain: "flutter-authentication-a-3fc81.firebaseapp.com",
            projectId: "flutter-authentication-a-3fc81",
            storageBucket: "flutter-authentication-a-3fc81.appspot.com",
            messagingSenderId: "596158069577",
            appId: "1:596158069577:web:b9cb619f482daa2e603898",
            measurementId: "G-4EZWCY6Z1L"));
  } else {
    await Firebase.initializeApp();
  }
}

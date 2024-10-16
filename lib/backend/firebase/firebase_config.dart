import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBoKwP7QBCeCp7oRObBM4RHpZxlnmjsG-0",
            authDomain: "ambiente-avalia-31e35.firebaseapp.com",
            projectId: "ambiente-avalia-31e35",
            storageBucket: "ambiente-avalia-31e35.appspot.com",
            messagingSenderId: "504464896159",
            appId: "1:504464896159:web:916947cbc09c9fea6bf2aa",
            measurementId: "G-0QR0SW5ZR6"));
  } else {
    await Firebase.initializeApp();
  }
}

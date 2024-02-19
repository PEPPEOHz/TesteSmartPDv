import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCHI2Cqm5FowD-mJbRPrKPoVidH_CZHF74",
            authDomain: "posapp-1d5d5.firebaseapp.com",
            projectId: "posapp-1d5d5",
            storageBucket: "posapp-1d5d5.appspot.com",
            messagingSenderId: "847528897414",
            appId: "1:847528897414:web:22e0e40cbd7f8cd5f9da07",
            measurementId: "G-NCT15D4XGC"));
  } else {
    await Firebase.initializeApp();
  }
}

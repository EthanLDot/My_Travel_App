import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseManager {
  Future getTripsList() async {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCIZlhedhG9fHK2I_UeuRPFx1liA4GA_iw",
            authDomain: "my-travel-app-74c04.firebaseapp.com",
            projectId: "my-travel-app-74c04",
            storageBucket: "my-travel-app-74c04.appspot.com",
            messagingSenderId: "284653830866",
            appId: "1:284653830866:web:c673624a4b4dcc6f56e30b"));
    List<String> tripNames = [];
    final CollectionReference tripList =
        FirebaseFirestore.instance.collection('Trips');
    try {
      await tripList.get().then((querySnapshot) {
        for (var element in querySnapshot.docs) {
          var data = element.data() as Map<String, dynamic>?;
          if (data != null && data.containsKey("city")) {
            tripNames.add(data["city"]);
          }
        }
      });
      return tripNames;
    } catch (e) {
      // print(e.toString());
      return tripNames;
    }
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_travel_app/pages/login.dart';
import 'package:my_travel_app/pages/main_page.dart';
import 'package:my_travel_app/shared/navigation_menu.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCIZlhedhG9fHK2I_UeuRPFx1liA4GA_iw",
          authDomain: "my-travel-app-74c04.firebaseapp.com",
          projectId: "my-travel-app-74c04",
          storageBucket: "my-travel-app-74c04.appspot.com",
          messagingSenderId: "284653830866",
          appId: "1:284653830866:web:c673624a4b4dcc6f56e30b"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

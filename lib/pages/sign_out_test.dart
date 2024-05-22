import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignOutTest extends StatefulWidget {
  const SignOutTest({super.key});

  @override
  State<SignOutTest> createState() => _SignOutTestState();
}

class _SignOutTestState extends State<SignOutTest> {
  Future logout() async {
    try {
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: logout,
        child: const Text('Logout'),
      ),
    );
  }
}

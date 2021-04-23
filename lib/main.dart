import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grab_eat_ui/pages/Loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

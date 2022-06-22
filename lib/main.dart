import 'package:attendance_system/screens/authentications/login.dart';
import 'package:attendance_system/screens/lecturers/dashboard.dart';
import 'package:attendance_system/screens/main/lecturers_dashbord.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATTENDANCE SYSTEM',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

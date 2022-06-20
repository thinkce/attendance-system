import 'package:attendance_system/screens/lecturers/dashboard.dart';
import 'package:attendance_system/screens/main/lecturers_dashbord.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATTENDANCE SYSTEM',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const LecturerHomeScreen(widget: Dashboard(),),
      debugShowCheckedModeBanner: false,
    );
  }
}

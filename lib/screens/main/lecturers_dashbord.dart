import 'package:attendance_system/controllers/responsive.dart';
import 'package:attendance_system/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LecturerHomeScreen extends StatefulWidget {
  const LecturerHomeScreen({Key? key}) : super(key: key);

  @override
  State<LecturerHomeScreen> createState() => _LecturerHomeScreenState();
}

class _LecturerHomeScreenState extends State<LecturerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Responsive().isDesktop(context) ? Row(children: [
        Container(
          width: 200,
          height: double.infinity,
          color: Colors.blue,
          child: const LecturersSideMenu(),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 200,
          height: double.infinity,
          color: Colors.green,
        ),
      ],) : null,
    );
  }
}

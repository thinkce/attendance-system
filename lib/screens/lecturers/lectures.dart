import 'package:attendance_system/screens/lecturers/new_lectures.dart';
import 'package:flutter/material.dart';

class Lectures extends StatefulWidget {
  const Lectures({Key? key}) : super(key: key);

  @override
  State<Lectures> createState() => _LecturesState();
}

class _LecturesState extends State<Lectures> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("NEW LECTURES"),
              ),
              Tab(
                child: Text("DETAILS"),
              ),
              Tab(
                child: Text("REPORT"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NewLectures(),
            Center(child: Text("data"),),
            Center(child: Text("data"),),
          ],
        ),
      ),
    );
  }
}

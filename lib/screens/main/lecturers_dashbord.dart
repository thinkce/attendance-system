import 'package:attendance_system/controllers/responsive.dart';
import 'package:attendance_system/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LecturerHomeScreen extends StatefulWidget {
  final Widget widget;
  const LecturerHomeScreen({Key? key, required this.widget}) : super(key: key);

  @override
  State<LecturerHomeScreen> createState() => _LecturerHomeScreenState();
}

class _LecturerHomeScreenState extends State<LecturerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !Responsive().isDesktop(context) ? AppBar(
        elevation: 0,
      ) : null,
      drawer: Responsive().isDesktop(context)
          ? null
          : const Drawer(
              child: LecturersSideMenu(),
            ),
      body: const Responsive().isDesktop(context)
          ? Row(
              children: [
                Container(
                  width: 200,
                  height: double.infinity,
                  color: Colors.black12,
                  child: const LecturersSideMenu(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  height: double.infinity,
                  color: Colors.white,
                  child: widget.widget ,
                ),
              ],
            )
          : widget.widget,
    );
  }
}

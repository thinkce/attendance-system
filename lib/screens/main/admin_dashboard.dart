import 'package:attendance_system/controllers/responsive.dart';
import 'package:attendance_system/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class AdminDashboard extends StatefulWidget {
  final Widget widget;
  const AdminDashboard({Key? key, required this.widget}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !const Responsive().isDesktop(context)
          ? AppBar(
              elevation: 0,
            )
          : null,
      drawer: const Responsive().isDesktop(context)
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
                  child: const AdminSideMenu(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  height: double.infinity,
                  color: Colors.white,
                  child: widget.widget,
                ),
              ],
            )
          : widget.widget,
    );
  }
}

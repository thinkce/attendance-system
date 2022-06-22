import 'package:attendance_system/screens/lecturers/dashboard.dart';
import 'package:attendance_system/screens/lecturers/lectures.dart';
import 'package:attendance_system/screens/main/lecturers_dashbord.dart';
import 'package:flutter/material.dart';

class LecturersSideMenu extends StatefulWidget {
  const LecturersSideMenu({Key? key}) : super(key: key);

  @override
  State<LecturersSideMenu> createState() => _LecturersSideMenuState();
}

class _LecturersSideMenuState extends State<LecturersSideMenu> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _scrollController,
      child: ListView(
        controller: _scrollController,
        children: [
          ListTile(
            leading: const Icon(
              Icons.home_max_outlined,
              color: Colors.black45,
            ),
            title: const Text(
              "ATTENDANCE",
              style:
                  TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          Container(
            height: 40,
          ),
          ListTile(
            leading: const Icon(
              Icons.pie_chart,
              color: Colors.black45,
            ),
            title: const Text(
              "DASHBOARD",
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (builder) => const LecturerHomeScreen(
                    widget: Dashboard(),
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.book,
              color: Colors.black45,
            ),
            title: const Text(
              "LECTURES",
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (builder) => const LecturerHomeScreen(
                    widget: Lectures(),
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.label,
              color: Colors.black45,
            ),
            title: const Text(
              "CLASS",
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.book_online,
              color: Colors.black45,
            ),
            title: const Text(
              "COURSES",
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.bar_chart,
              color: Colors.black45,
            ),
            title: const Text(
              "REPORT",
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class AdminSideMenu extends StatefulWidget {
  const AdminSideMenu({Key? key}) : super(key: key);

  @override
  State<AdminSideMenu> createState() => _AdminSideMenuState();
}

class _AdminSideMenuState extends State<AdminSideMenu> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

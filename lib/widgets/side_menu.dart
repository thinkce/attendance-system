import 'package:flutter/material.dart';

class LecturersSideMenu extends StatefulWidget {
  const LecturersSideMenu({Key? key}) : super(key: key);

  @override
  State<LecturersSideMenu> createState() => _LecturersSideMenuState();
}

class _LecturersSideMenuState extends State<LecturersSideMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(
            Icons.home_max_outlined,
            color: Colors.white,
          ),
          title: const Text(
            "ATTENDANCE",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}

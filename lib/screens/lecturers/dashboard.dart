import 'package:attendance_system/controllers/responsive.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  ScrollController? _scrollController;
  ScrollController? _scrollController2;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController2 = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    _scrollController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = const Responsive().isDesktop(context)
        ? MediaQuery.of(context).size.width - 200
        : MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        child: Scrollbar(
          thumbVisibility: true,
          controller: _scrollController,
          child: ListView(
            controller: _scrollController,
            physics: const ClampingScrollPhysics(),
            children: [
              const SizedBox(
                height: 30,
              ),
              Scrollbar(
                thumbVisibility: true,
                controller: _scrollController2,
                child: SingleChildScrollView(
                  controller: _scrollController2,
                  scrollDirection: Axis.horizontal,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: 250,
                          height: 150,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: 250,
                          height: 150,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: 250,
                          height: 150,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: 250,
                          height: 150,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: height,
                  width: width,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

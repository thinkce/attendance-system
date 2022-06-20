import 'package:attendance_system/widgets/text_fields.dart';
import 'package:flutter/material.dart';

class NewLectures extends StatefulWidget {
  const NewLectures({Key? key}) : super(key: key);

  @override
  State<NewLectures> createState() => _NewLecturesState();
}

class _NewLecturesState extends State<NewLectures> {
  ScrollController? _scrollController;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: _globalKey,
          child: Scrollbar(
            controller: _scrollController,
            child: ListView(
              controller: _scrollController,
              children:  [
                const Center(
                  child: Text("START NEW LECTURES HERE"),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

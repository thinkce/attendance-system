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
  void initState(){
    super.initState();
    _scrollController = ScrollController();
  }
  @override
  void dispose(){
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: Scrollbar(
          controller: _scrollController,
          child: ListView(
            controller: _scrollController,
            children: [

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';


class Responsive extends StatelessWidget {

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  const Responsive({Key? key, this.desktop, this.tablet, this.mobile}) : super(key: key);


  bool isDesktop(BuildContext ctx) => MediaQuery.of(ctx).size.width > 800 ? true : false;

  bool isTablet(BuildContext ctx) => (MediaQuery.of(ctx).size.width < 800 && MediaQuery.of(ctx).size.width > 600) ? true : false;

  bool isMobile(BuildContext ctx) => MediaQuery.of(ctx).size.width < 600 ? true : false;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
        if(constraints.maxWidth >= 800){
          return desktop!;
        }else if(constraints.maxWidth >= 600 && constraints.maxWidth <= 800){
          return tablet!;
        }else{
          return mobile!;
        }
    }

    );
  }
}

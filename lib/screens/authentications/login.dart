import 'package:attendance_system/controllers/responsive.dart';
import 'package:attendance_system/widgets/text_fields.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String? image = "";
    if (kIsWeb) {
      image = "images/background.png";
    } else {
      image = "assets/images/background.png";
    }
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: width,
          height: height,
          color: Colors.black.withOpacity(0.7),
          child: const Responsive().isDesktop(context)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        width: width * 0.40,
                        height: 400,
                        // decoration: BoxDecoration(
                        //   color: Colors.white60,
                        //   borderRadius: BorderRadius.circular(30),
                        // ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Welcome To ThinkCE Attendance System",
                                style: GoogleFonts.aladin(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white60,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: width * 0.40,
                        height:
                            const Responsive().isDesktop(context) ? 450 : 250,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: LoginForm(),
                        ),
                      ),
                    ),
                  ],
                )
              : Container(
                  width: width * 0.40,
                  height: const Responsive().isDesktop(context) ? 450 : 250,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: LoginForm(),
                  ),
                ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        const Text("LOGIN TO ACCOUNT"),
        const SizedBox(
          height: 20,
        ),
        const Icon(
          Icons.lock,
          size: 60,
          color: Colors.black38,
        ),
        const SizedBox(
          height: 30,
        ),
        customTextField(label: "Email"),
        customTextField(
          label: "Password",
          txtObscure: true,
        ),
        custombutton(context: context, text: "LOGIN")
      ],
    ));
  }
}

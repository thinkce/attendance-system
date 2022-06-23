import 'package:attendance_system/controllers/responsive.dart';
import 'package:attendance_system/screens/authentications/sign_up.dart';
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
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: LoginForm(),
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
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
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: LoginForm(),
                      ),
                    ),
                  ],
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
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: const Responsive().isDesktop(context) ? width * 0.40 : width,
      height: const Responsive().isDesktop(context) ? 500 : 450,
      decoration: BoxDecoration(
        color: Colors.green.shade900,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Form(
          child: Column(
        children: [
          Text(
            "LOGIN TO ACCOUNT",
            style: GoogleFonts.aladin(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.white60,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Icon(
            Icons.lock,
            size: 60,
            color: Colors.white54,
          ),
          const SizedBox(
            height: 30,
          ),
          customTextField(
            label: "Email",
            icon: const Icon(
              Icons.email,
              color: Colors.white54,
            ),
          ),
          customTextField(
            label: "Password",
            txtObscure: true,
            icon: const Icon(
              Icons.lock,
              color: Colors.white54,
            ),
          ),
          custombutton(context: context, text: "LOGIN"),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Not having an account yet? "),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: ((context) => const RegisterScreen()),
                      ),
                    );
                  },
                  child: const Text("Sign Up"),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customText({
  String? label,
  String? value,
}) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        width: 1,
        color: Colors.teal,
      ),
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              label!,
              style: GoogleFonts.robotoSlab(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              value!,
              style: GoogleFonts.robotoSlab(
                color: Colors.white.withOpacity(0.5),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget cardWidget(
    {String? title,
      String? number,
      IconData? icon,
      required BuildContext context}) {
  double _w = MediaQuery.of(context).size.width;
  double _h = MediaQuery.of(context).size.height;
  return InkWell(
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    child: Container(
      margin: const EdgeInsets.all(5.0),
      height: _h * 0.15,
      width: _w * 0.4,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 2, 34, 31).withOpacity(.4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: Colors.white.withOpacity(.6),
            size: 35,
          ),
          Text(
            title!,
            maxLines: 4,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withOpacity(.7),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            number!,
            maxLines: 4,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white.withOpacity(.7),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}

Widget customTextField(
    {String? label,
      bool txtObscure = false,
      String? Function(String?)? validator,
      TextEditingController? txtController,
      bool disable = true,
      Icon? icon,
      TextInputType? keyboard = TextInputType.name}) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextFormField(
      style: const TextStyle(
        color: Colors.black54,
      ),
      decoration: InputDecoration(
        filled: true,
        prefixIcon: icon,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            width: 2,
            color: Colors.white54,
          ),
        ),
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.black54,
        ),
      ),
      obscureText: txtObscure,
      enabled: disable,
      validator: validator,
      controller: txtController,
      keyboardType: keyboard,
    ),
  );
}

Widget custombutton(
    {String? text, Function()? onPressed, required BuildContext context}) {
  return GestureDetector(
    onTap: onPressed,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Card(
          elevation: 0,
          color: Colors.lightBlue,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                text!,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

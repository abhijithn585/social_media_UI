import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/view/widget/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          children: [
            Text(
              'Welcome back! Glad to see you, Again!',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomTextField(hintText: 'Username'),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(hintText: 'Email'),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(hintText: 'Password'),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(hintText: 'Confirm password'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF688a74)),
                fixedSize: MaterialStateProperty.all<Size>(const Size(200, 60)),
              ),
              child: const Text(
                "Agree and Register",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Or Login with",
              style: TextStyle(color: Colors.black45),
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200]),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.phone)),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200]),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.google)),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200]),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.github)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

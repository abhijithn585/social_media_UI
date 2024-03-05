import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/view/home_page.dart';
import 'package:task/view/register_page.dart';
import 'package:task/view/widget/title.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          color: Colors.black,
          height: 400,
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Padding(
                    padding: const EdgeInsets.all(8.0), child: TextTitile())),
          ])),
      Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200]),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: '  Email',
                                    border: InputBorder.none)))),
                    const SizedBox(height: 10),
                    Container(
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200]),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: '  Password',
                                    border: InputBorder.none)))),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                              (route) => false);
                        },
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all<Size>(
                                const Size.fromWidth(200)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF688a74))),
                        child: const Text("Get Started",
                            style: TextStyle(color: Colors.white))),
                    const SizedBox(height: 10),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200]),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.google))),
                      const SizedBox(width: 10),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200]),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.phone))),
                      const SizedBox(width: 10),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200]),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.github)))
                    ]),
                    const SizedBox(height: 10),
                    GestureDetector(
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have account?",
                                  style: TextStyle(color: Colors.black)),
                              SizedBox(width: 5),
                              Text('signUp',
                                  style: TextStyle(color: Colors.grey))
                            ]),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        })
                  ])))
    ]));
  }
}

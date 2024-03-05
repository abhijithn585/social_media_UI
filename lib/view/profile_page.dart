import 'package:flutter/material.dart';
import 'package:task/view/widget/text_field.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 180,
                  width: 150,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/dp.jpg'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.image,
                      color: Color.fromARGB(255, 37, 37, 37),
                    )),
                IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, bottom: 10),
              child: Text(
                "Username",
                style: TextStyle(color: Color.fromARGB(255, 201, 150, 73)),
              ),
            ),
            const TextFieldCustom(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, bottom: 10),
              child: Text(
                "Bio",
                style: TextStyle(color: Color.fromARGB(255, 201, 150, 73)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 201, 150, 73)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 201, 150, 73)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, bottom: 10),
              child: Text(
                "E-mail",
                style: TextStyle(color: Color.fromARGB(255, 201, 150, 73)),
              ),
            ),
            const TextFieldCustom(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, bottom: 10),
              child: Text(
                "phone",
                style: TextStyle(color: Color.fromARGB(255, 201, 150, 73)),
              ),
            ),
            const TextFieldCustom()
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task/view/message_page.dart';
import 'package:task/view/profile_page.dart';
import 'package:task/view/widget/custom_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ));
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage("images/dp.jpg"),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MessagePage(),
                      ));
                },
                icon: const Icon(Icons.message)),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              CustomContainer(
                  profileImage: "images/profile_pic2.jpg",
                  username: "David",
                  likeCount: "23",
                  commentCount: "26",
                  shareCount: "94",
                  location: "UK",
                  image: "images/sport.jpg"),
              const SizedBox(
                height: 20,
              ),
              CustomContainer(
                  profileImage: "images/profile_pic1.jpg",
                  username: "Sachin",
                  likeCount: "43",
                  commentCount: "56",
                  shareCount: "9",
                  location: "Banglore",
                  image: "images/car.jpg")
            ],
          ),
        ),
      ),
    );
  }
}

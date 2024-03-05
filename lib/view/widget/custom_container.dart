import 'package:flutter/material.dart';
import 'package:task/view/widget/custom_text_field.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  CustomContainer(
      {required this.username,
      required this.likeCount,
      required this.commentCount,
      required this.shareCount,
      required this.location,
      required this.image,
      required this.profileImage,
      super.key});
  String username;
  String likeCount;
  String commentCount;
  String shareCount;
  String image;
  String location;
  String profileImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profileImage),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Text(
                      username,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      location,
                      style: const TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 300,
              width: 300,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.favorite_border)),
                  Text(likeCount)
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.comment_outlined)),
                  Text(
                    commentCount,
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                  Text(shareCount)
                ],
              ),
            ],
          ),
          CustomTextField(hintText: "Add comment..")
        ],
      ),
    );
  }
}

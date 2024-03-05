import 'package:flutter/material.dart';
import 'package:task/model/data_model.dart';

// ignore: must_be_immutable
class ChatPage extends StatefulWidget {
  ChatPage({super.key, required this.data});
  DataModel data;
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(widget.data.image!),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "@${widget.data.name!}",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        height: 30,
                        width: 50,
                        child: const Padding(
                          padding: EdgeInsets.all(4),
                          child: Text("Hii"),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(widget.data.image!),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("images/dp.jpg"),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey),
                        height: 30,
                        width: 50,
                        child: const Padding(
                          padding: EdgeInsets.all(4),
                          child: Text("helloo"),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey),
                        height: 150,
                        width: 200,
                        child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Image.asset(
                              "images/family.jpg",
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(widget.data.image!),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey),
                        height: 150,
                        width: 200,
                        child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Image.asset(
                              "images/family.jpg",
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(widget.data.image!),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: 330,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon:
                            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                        hintText: "Type here..",
                        fillColor: const Color.fromARGB(255, 236, 236, 236),
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20)),
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.send))
            ],
          )
        ],
      ),
    );
  }
}

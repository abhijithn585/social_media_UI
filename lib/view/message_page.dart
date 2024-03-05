import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:task/constants/user_list.dart';
import 'package:task/view/chat_page.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slideAnimation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slideAnimation =
        Tween(begin: const Offset(-1, 0), end: Offset.zero).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: const Icon(
                Icons.search,
              ),
              hintText: "search",
              fillColor: const Color(0xFFF7F8F9),
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: SizedBox(
          width: 350,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: user.length,
                    itemBuilder: (context, index) {
                      final message = user[index];
                      return SlideTransition(
                          position: slideAnimation,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4, bottom: 4),
                            child: Slidable(
                              startActionPane: ActionPane(
                                  motion: const StretchMotion(),
                                  children: [
                                    SlidableAction(
                                      onPressed: (context) => _onDissmissed,
                                      icon: Icons.delete,
                                      backgroundColor: Colors.red,
                                    )
                                  ]),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ChatPage(
                                          data: message,
                                        ),
                                      ));
                                },
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(message.image!),
                                  ),
                                  title: Text("${message.name}"),
                                  subtitle: const Text("Tap to send message"),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.camera_alt_rounded)),
                                ),
                              ),
                            ),
                          ));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _onDissmissed() {}

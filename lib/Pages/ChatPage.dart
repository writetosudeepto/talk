import 'package:flutter/material.dart';
import 'package:talk/customUI/CustomCard.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.chat, color: Colors.white),
        onPressed: () {},
      ),
      body: ListView(
        children: const [
          CustomCard()
        ],
      )
    );
  }
}

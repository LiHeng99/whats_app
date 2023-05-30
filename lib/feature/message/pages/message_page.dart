import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Message'),
      // ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('User $index'),
            );
          },
        ),
      ),
    );
  }
}

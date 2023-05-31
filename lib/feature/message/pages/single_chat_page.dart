import 'package:flutter/material.dart';

class SingleChatPage extends StatefulWidget {
  const SingleChatPage({super.key});

  @override
  State<SingleChatPage> createState() => _SingleChatPageState();
}

class _SingleChatPageState extends State<SingleChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('single chat page'),
    );
  }
}

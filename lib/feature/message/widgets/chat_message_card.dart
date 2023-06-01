import 'package:flutter/material.dart';
import 'package:whatsapp/models/message/message.dart';

class ChatMessageCard extends StatefulWidget {
  final MessageModel? messageModel;
  const ChatMessageCard({super.key, this.messageModel});

  @override
  State<ChatMessageCard> createState() => _ChatMessageCardState();
}

class _ChatMessageCardState extends State<ChatMessageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          child: Placeholder(),
        ),
        title: Text('Contact'),
        subtitle: Text(widget.messageModel!.context),
        trailing: Text(widget.messageModel!.sendTime),
      ),
    );
  }
}

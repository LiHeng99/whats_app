import 'package:flutter/material.dart';

class MessageCardWidget extends StatefulWidget {
  final int? index;
  final String? chatType;
  final VoidCallback onTap;

  const MessageCardWidget(
      {super.key, this.index, this.chatType, required this.onTap});

  @override
  State<MessageCardWidget> createState() => _MessageCardWidgetState();
}

class _MessageCardWidgetState extends State<MessageCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // : widget.onPressed,
      child: ListTile(
        onTap: widget.onTap,
        leading: CircleAvatar(
            child: Image(
          image: NetworkImage(
              "https://p.qqan.com/up/2023-5/16848026007788969.jpg"),
        )),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'User ${widget.index}',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 5),
              Text(
                'hello world ${widget.index}',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text(
              '10:00',
              style: TextStyle(fontSize: 12),
            ),

            SizedBox(height: 10),
            Icon(Icons.volume_off, size: 10, color: Colors.grey)
            // CircleAvatar(
            //   radius: 10,
            //   child: Text(
            //     '${widget.index}',
            //     style: TextStyle(fontSize: 12),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

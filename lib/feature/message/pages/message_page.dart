import 'package:flutter/material.dart';
import 'package:whatsapp/feature/message/pages/single_chat_page.dart';
import 'package:whatsapp/feature/message/widgets/message_card.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          //循环十次
          itemCount: 1,
          itemBuilder: (context, index) {
            return ListBody(
              children: <Widget>[
                ListBody(
                  children: <Widget>[
                    MessageCardWidget(
                      index: index,
                      chatType: 'single',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SingleChatPage(
                              userNameAppBarText: 'User ${index}',
                            );
                          }),
                        );
                      },
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

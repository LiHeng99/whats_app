import 'package:flutter/material.dart';
import 'package:whatsapp/feature/message/widgets/chat_message_card.dart';
import 'package:whatsapp/feature/message/widgets/home_app_bar.dart';
import 'package:whatsapp/feature/message/widgets/message_send_widget.dart';
import 'package:whatsapp/models/message/message.dart';

class SingleChatPage extends StatefulWidget {
  final String? userNameAppBarText;
  const SingleChatPage({super.key, this.userNameAppBarText});

  @override
  State<SingleChatPage> createState() => _SingleChatPageState();
}

class _SingleChatPageState extends State<SingleChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar().backButtonAppbar(
        context,
        widget.userNameAppBarText!,
        onPressed: () {},
      ),
      body: ChatMessageCard(
        messageModel: messageList[0],
      ),
      bottomNavigationBar: MessageSendWidget(),
    );
  }
}

List<MessageModel> messageList = const [
  MessageModel(
    userId: '21321',
    userName: '李白',
    context: '夜雨寄北 何时杖尔看南雪 何时跃尔起北围 人生不相见动如参与商 今夕复何夕共此灯烛光 ',
    sendTime: '10:00',
    sendUserId: '123123',
    sendUserName: '李世民',
    messageType: '0',
    messageStatus: '1',
  ),
];

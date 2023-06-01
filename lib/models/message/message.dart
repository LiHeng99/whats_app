class MessageModel {
  final String userId;
  final String userName;
  final String context;
  final String sendTime;
  final String sendUserId;
  final String sendUserName;
  final String messageType;
  final String messageStatus;

  const MessageModel(
      {required this.userId,
      required this.userName,
      required this.context,
      required this.sendTime,
      required this.sendUserId,
      required this.sendUserName,
      required this.messageType,
      required this.messageStatus});
}

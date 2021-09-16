import 'package:chat/constants.dart';
import 'package:chat/models/ChatMessage.dart';
import 'package:chat/screens/messages/components/text_message.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({
    Key key,
    @required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!message.isSender) ...[
          Padding(
            padding: const EdgeInsets.only(
              top: kDefaultPadding / 2,
              right: kDefaultPadding / 4,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_2.png'),
              radius: 15,
            ),
          ),
        ],
        TextMessage(message: message),
      ],
    );
  }
}

import 'package:chat/constants.dart';
import 'package:chat/models/ChatMessage.dart';
import 'package:chat/screens/messages/components/audio_message.dart';
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
    Widget messageContainer(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
          break;
        case ChatMessageType.audio:
          return AudioMessage(message: message);
          break;
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding / 3),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            Padding(
              padding: const EdgeInsets.only(
                top: kDefaultPadding / 5,
                right: kDefaultPadding / 4,
                left: kDefaultPadding,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user_2.png'),
                radius: 18,
              ),
            ),
          ],
          Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding),
            child: messageContainer(message),
          ),
        ],
      ),
    );
  }
}

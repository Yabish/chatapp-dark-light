import 'package:chat/models/ChatMessage.dart';
import 'package:chat/screens/messages/components/chat_input_field.dart';
import 'package:chat/screens/messages/components/message.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: demeChatMessages.length,
            itemBuilder: (context, index) => Message(
              message: demeChatMessages[index],
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}

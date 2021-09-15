import 'package:chat/constants.dart';
import 'package:chat/screens/chats/components/body.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.messenger,
          ),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.people,
          ),
          label: "People",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.call,
          ),
          label: "Call",
        ),
      ]),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text('Chats'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
          ),
        ),
      ],
    );
  }
}

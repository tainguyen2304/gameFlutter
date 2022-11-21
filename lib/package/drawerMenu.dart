import 'dart:io';
import 'package:flutter/material.dart';

class ListFriend extends StatefulWidget {
  const ListFriend({Key? key}) : super(key: key);

  @override
  State<ListFriend> createState() => _ListFriendState();
}

class _ListFriendState extends State<ListFriend> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "ABC System",
                style: TextStyle(color: Colors.white),
              )),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Cai dat'),
            onTap: (() {
              // Navigator.of(context).popUntil((route) => route.isFirst);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => SettingScreen()));
            }),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('tai khoan'),
            onTap: (() {
              // Navigator.of(context).popUntil((route) => route.isFirst);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => AccountScreent()));
            }),
          )
        ],
      ),
    );
  }
}

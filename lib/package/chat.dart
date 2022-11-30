import 'package:flutter/material.dart';

import '../drawer/my_header_drawer.dart';
import 'giao_dien_menu_play.dart';

class ChatMesseage extends StatefulWidget {
  final TextEditingController _message = TextEditingController();

  @override
  State<ChatMesseage> createState() => _ChatMesseageState();
}

class _ChatMesseageState extends State<ChatMesseage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h8.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset("images/arrow.png"),
                    iconSize: 40,
                  ),
                ),
              ],
            ),
            Container(
              height: size.height / 10,
              width: size.width,
              alignment: Alignment.center,
              child: Container(
                height: size.height / 12,
                width: size.width / 1.1,
                child: Row(
                  children: [
                    Container(
                      height: size.height / 12,
                      width: size.width / 1.5,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

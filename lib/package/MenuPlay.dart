import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:game/package/Setting.dart';
import 'package:game/models/add.dart';
import 'package:game/models/popmenu.dart';
import 'package:game/package/choose_level_play_offline.dart';
import 'package:game/package/choose_topic_screen.dart';
import '../drawer/my_header_drawer.dart';

class MenuPlay extends StatefulWidget {
  const MenuPlay(
      {super.key,
      required this.nickName,
      required this.avatar,
      required this.age});
  final String nickName;
  final String avatar;
  final String age;

  @override
  State<MenuPlay> createState() => _MenuPlayState();
}

class _MenuPlayState extends State<MenuPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Image.asset(
                    widget.avatar,
                    height: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          widget.nickName,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'LV.0',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  )
                ])),
            Container(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Setting()),
                  );
                },
                icon: Image.asset("images/settings.png"),
                iconSize: 30,
              ),
            ),
          ],
        ),
      ),
      // drawer: const ListFriend(),
      drawer: Drawer(
        child: SingleChildScrollView(
          dragStartBehavior: DragStartBehavior.down,
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("images/icon1.png"),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(25),
                      side: BorderSide(width: 2, color: Colors.black)),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseTopic(
                              nickName: widget.nickName,
                              avatar: widget.avatar,
                              age: widget.age)),
                    );
                  },
                  child: Text("Player Offline")),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(25),
                      side: BorderSide(width: 2, color: Colors.black)),
                  onPressed: () {},
                  child: Text("Player Online")),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(25),
                      side: BorderSide(width: 2, color: Colors.black)),
                  onPressed: () {},
                  child: Text("Join Room")),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(25),
                      side: BorderSide(width: 2, color: Colors.black)),
                  onPressed: () {},
                  child: Text("Create Room")),
            ),
          ],
        ),
      ),
    );
  }
}

Widget MyDrawerList() {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/arrow.png"),
                  iconSize: 40,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("images/loupe.png"),
                iconSize: 40,
              ),
              Text('Find Friend'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: TextField(
              style: const TextStyle(color: Colors.black54),
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black54),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Find Friend',
                  prefixIcon: Icon(Icons.manage_accounts),
                  hintStyle: TextStyle(color: Colors.black54)),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: AddFr(),
              ),
            ],
          ),
          Row(
            children: [
              Text('Friend(3)'),
              Image.asset(
                "images/arrow.png",
                height: 20,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Gia Bảo',
                  style: TextStyle(fontSize: 20),
                ),
                Image.asset(
                  "images/day.png",
                  height: 25,
                ),
                PopMenu(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Thái Nguyễn',
                  style: TextStyle(fontSize: 20),
                ),
                Image.asset(
                  "images/day.png",
                  height: 25,
                ),
                PopMenu(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Thành Tài',
                  style: TextStyle(fontSize: 20),
                ),
                Image.asset(
                  "images/day.png",
                  height: 25,
                ),
                const PopMenu(),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

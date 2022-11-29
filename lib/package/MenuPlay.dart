import 'package:flutter/material.dart';
import 'package:game/package/Setting.dart';
import 'package:game/package/drawerMenu.dart';

class MenuPlay extends StatefulWidget {
  MenuPlay(
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
      drawer: const ListFriend(),
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
                  onPressed: () {},
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Room extends StatefulWidget {
  const Room({super.key});

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Image.asset('images/king1.png'),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/Mask Group 17.png"),
                      iconSize: 100,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        content: Text('Enter Name friemd'),
                        actions: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                child: TextField(
                                  style: const TextStyle(color: Colors.black54),
                                  decoration: const InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.black54),
                                      ),
                                      border: OutlineInputBorder(),
                                      hintText: 'Name',
                                      hintStyle:
                                          TextStyle(color: Colors.black54)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: const StadiumBorder(),
                                        backgroundColor: Colors.white,
                                        padding: const EdgeInsets.fromLTRB(
                                            40, 20, 40, 20),
                                        side: BorderSide(
                                            width: 2, color: Colors.black)),
                                    onPressed: () {},
                                    child: Text("Check")),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(
                                              0, 10, 100, 0),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black))),
                                          child: Text(
                                            'Nguyễn',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                        Container(
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  side: BorderSide(
                                                      width: 2,
                                                      color: Colors.black)),
                                              onPressed: () {},
                                              child: Text("Invite")),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(30, 10, 30, 10),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.width /
                                                2.5,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  icon: Image.asset("images/plus.png"),
                  iconSize: 100,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("images/swords.png"),
              iconSize: 100,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                    side: BorderSide(width: 2, color: Colors.black)),
                onPressed: () {},
                child: Text("Game Star")),
            Container(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

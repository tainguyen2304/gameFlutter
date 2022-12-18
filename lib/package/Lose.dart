import 'package:flutter/material.dart';
import 'package:game/package/HomePage.dart';
import 'package:game/package/playOffline/quizz_screen.dart';
import 'package:game/package/round_screen.dart';

class LoseScreen extends StatefulWidget {
  const LoseScreen(
      {super.key,
      required this.nickName,
      required this.avatar,
      required this.score,
      required this.levelUser,
      required this.topic,
      required this.level,
      required this.age});
  final String nickName;
  final String avatar;
  final String age;
  final String level;
  final String topic;
  final String score;
  final int levelUser;

  @override
  State<LoseScreen> createState() => _LoseScreen();
}

class _LoseScreen extends State<LoseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h6.jpg"), fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("RESULTS",
                    style: TextStyle(
                      fontSize: 20,
                    )),
                const Text(
                  "You Lose",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/crying.png"),
                          iconSize: 100,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "images/Mask Group 17.png",
                            fit: BoxFit.cover,
                          ),
                          iconSize: 100,
                        ),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Color.fromARGB(255, 83, 88, 93),
                            padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
                            side: BorderSide(width: 2, color: Colors.black)),
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PlayOffline(
                                      score: widget.score.toString(),
                                      levelUser: widget.levelUser,
                                      topic: widget.topic,
                                      level: widget.level,
                                      nickName: widget.nickName,
                                      avatar: widget.avatar,
                                      age: widget.age)));
                        },
                        child: const Text(
                          "Play Again",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(25),
                            side: BorderSide(width: 2, color: Colors.black)),
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage(
                                      score: widget.score.toString(),
                                      level: widget.levelUser,
                                      nickName: widget.nickName.toString(),
                                      avatar: widget.avatar.toString(),
                                      age: widget.age.toString(),
                                    )),
                          );
                        },
                        child: Text("Home")),
                    SizedBox(
                      width: 100,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(25),
                            side: BorderSide(width: 2, color: Colors.black)),
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Round(
                                      score: widget.score.toString(),
                                      level: widget.levelUser,
                                      topic: widget.topic,
                                      nickName: widget.nickName,
                                      avatar: widget.avatar,
                                      age: widget.age)));
                        },
                        child: Text("Back")),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

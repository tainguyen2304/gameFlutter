import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game/package/ChangePassword.dart';
import 'changeInfo.dart';
import 'Login.dart';

class Setting extends StatefulWidget {
  const Setting(
      {super.key,
      this.nickName,
      this.avatar,
      this.age,
      this.level,
      this.score});

  final String? nickName;
  final String? avatar;
  final String? age;
  final int? level;
  final String? score;

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height +
                MediaQuery.of(context).size.height * 1 / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 100.0, 15.0, 0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Âm Thanh:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/volume.png"),
                        iconSize: 30,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'Ánh Sáng:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/icon3.png"),
                        iconSize: 30,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1 / 2 + 40,
                        padding: const EdgeInsets.all(6),
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 227, 221, 221),
                                ),
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.fromLTRB(40, 20, 40, 20))),
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ChangePassword()));
                            },
                            child: const Text(
                              "Change password",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1 / 2 + 40,
                        padding: const EdgeInsets.all(6),
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 227, 221, 221),
                                ),
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.fromLTRB(40, 20, 40, 20))),
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => changeinfo(
                                            score: widget.score.toString(),
                                            level: widget.level,
                                            nickName:
                                                widget.nickName.toString(),
                                            avatar: widget.avatar.toString(),
                                            age: widget.age.toString(),
                                          )));
                            },
                            child: const Text(
                              "Change Info",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1 / 2 + 40,
                        padding: const EdgeInsets.all(6),
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 227, 221, 221),
                                ),
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.fromLTRB(40, 20, 40, 20))),
                            onPressed: () {
                              FirebaseAuth.instance.signOut();

                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: const Text(
                              "Log out",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/information.png"),
                          iconSize: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 227, 221, 221),
                                ),
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.fromLTRB(40, 20, 40, 20))),
                            onPressed: () {},
                            child: const Text(
                              "Abouts us",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromARGB(255, 108, 99, 99),
                            ),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.fromLTRB(40, 20, 40, 20))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Back",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

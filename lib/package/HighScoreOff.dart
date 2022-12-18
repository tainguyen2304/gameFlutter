import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HighScoreRank extends StatefulWidget {
  const HighScoreRank({super.key});

  @override
  State<HighScoreRank> createState() => _HighScoreRankState();
}

class _HighScoreRankState extends State<HighScoreRank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h4.jpg"), fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.width / 0.7,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "High Score",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w400),
                          ),
                          //
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset("images/Mask Group 17.png"),
                                iconSize: 70,
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black))),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "images/rankBk.png",
                                          width: 50,
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        const Text(
                                          "501",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset("images/Mask Group 18.png"),
                                iconSize: 70,
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black))),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "images/rankVang.png",
                                          width: 50,
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        const Text(
                                          "350",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset("images/Mask Group 19.png"),
                                iconSize: 70,
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black))),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "images/rankSliver.png",
                                          width: 50,
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        const Text(
                                          "200",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset("images/Mask Group 20.png"),
                                iconSize: 70,
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.black))),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "images/rankDong.png",
                                          width: 50,
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        const Text(
                                          "98",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor:
                                      Color.fromARGB(255, 99, 71, 71),
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  side: const BorderSide(
                                      width: 2, color: Colors.black)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Back",
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:game/package/HomePage.dart';
import 'package:game/package/infoCaNhan.dart';

import '../data/user.dart';

class HighScoreStart extends StatefulWidget {
  const HighScoreStart(
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
  State<HighScoreStart> createState() => _HighScoreStartState();
}

class _HighScoreStartState extends State<HighScoreStart> {
  List<Usera> lsUsers = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("User").snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              final data = streamSnapshot.data!.docs;

              for (var row in data) {
                final r = row.data() as Map<String, dynamic>;
                var a = Usera(
                    score: r['score'],
                    level: r['Level'],
                    id: r['id'],
                    email: r['email'],
                    name: r['name'],
                    avatar: r['avatar'],
                    age: r['age']);
                lsUsers.add(a);
                for (int i = 0; i < lsUsers.length - 1; i++) {
                  for (int j = i + 1; j < lsUsers.length; j++) {
                    if (lsUsers[i].score < lsUsers[j].score) {
                      // If arr[i] > arr[j], swap the value of arr[i] and arr[j]
                      Usera temp = lsUsers[i];
                      lsUsers[i] = lsUsers[j];
                      lsUsers[j] = temp;
                    }
                  }
                }
                for (int i = 0; i < lsUsers.length - 1; i++) {
                  for (int j = i + 1; j < lsUsers.length; j++) {
                    if (lsUsers[i].score == lsUsers[j].score) {
                      if (lsUsers[i].level < lsUsers[j].level) {
                        // If arr[i] > arr[j], swap the value of arr[i] and arr[j]
                        Usera temp = lsUsers[i];
                        lsUsers[i] = lsUsers[j];
                        lsUsers[j] = temp;
                      }
                    }
                  }
                }
              }
              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/h4.jpg"), fit: BoxFit.cover),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.25,
                          height: MediaQuery.of(context).size.width / 0.7,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 17, 16, 16),
                                width: 3),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Text(
                                        "High Score",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      //

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        InfoCaNhan(
                                                            score: lsUsers[0]
                                                                .score
                                                                .toString(),
                                                            level: lsUsers[0]
                                                                .level
                                                                .toString(),
                                                            nickName:
                                                                lsUsers[0].name,
                                                            avatar: lsUsers[0]
                                                                .avatar,
                                                            age: lsUsers[0]
                                                                .age)),
                                              );
                                            },
                                            icon:
                                                Image.asset(lsUsers[0].avatar),
                                            iconSize: 50,
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                decoration: const BoxDecoration(
                                                    border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black),
                                                )),
                                                child: Row(
                                                  children: [
                                                    Text(lsUsers[0].name,
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    SizedBox(width: 20),
                                                    Text(
                                                      lsUsers[0]
                                                          .score
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors
                                                          .yellow.shade700,
                                                      size: 40,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        InfoCaNhan(
                                                            score: lsUsers[1]
                                                                .score
                                                                .toString(),
                                                            level: lsUsers[1]
                                                                .level
                                                                .toString(),
                                                            nickName:
                                                                lsUsers[1].name,
                                                            avatar: lsUsers[1]
                                                                .avatar,
                                                            age: lsUsers[1]
                                                                .age)),
                                              );
                                            },
                                            icon:
                                                Image.asset(lsUsers[1].avatar),
                                            iconSize: 50,
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                decoration: const BoxDecoration(
                                                    border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black),
                                                )),
                                                child: Row(
                                                  children: [
                                                    Text(lsUsers[1].name,
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    SizedBox(width: 20),
                                                    Text(
                                                      lsUsers[1]
                                                          .score
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors
                                                          .yellow.shade700,
                                                      size: 40,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        InfoCaNhan(
                                                            score: lsUsers[2]
                                                                .score
                                                                .toString(),
                                                            level: lsUsers[2]
                                                                .level
                                                                .toString(),
                                                            nickName:
                                                                lsUsers[2].name,
                                                            avatar: lsUsers[2]
                                                                .avatar,
                                                            age: lsUsers[2]
                                                                .age)),
                                              );
                                            },
                                            icon:
                                                Image.asset(lsUsers[2].avatar),
                                            iconSize: 50,
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                decoration: const BoxDecoration(
                                                    border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black),
                                                )),
                                                child: Row(
                                                  children: [
                                                    Text(lsUsers[2].name,
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    SizedBox(width: 20),
                                                    Text(
                                                      lsUsers[2]
                                                          .score
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors
                                                          .yellow.shade700,
                                                      size: 40,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      //

                                      //
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: const StadiumBorder(),
                                              backgroundColor: Color.fromARGB(
                                                  255, 133, 126, 126),
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      50, 20, 50, 20),
                                              side: BorderSide(
                                                  width: 2,
                                                  color: Colors.black)),
                                          onPressed: () {
                                            Navigator.of(context).popUntil(
                                                (route) => route.isFirst);
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage(
                                                        score: widget.score
                                                            .toString(),
                                                        level: widget.level,
                                                        nickName: widget
                                                            .nickName
                                                            .toString(),
                                                        avatar: widget.avatar
                                                            .toString(),
                                                        age: widget.age
                                                            .toString(),
                                                      )),
                                            );
                                          },
                                          child: Text("Back")),
                                    ]),
                              ]),
                        ),
                      ])
                ]),
              );
            }
            return Container();
          }),
    );
  }
}

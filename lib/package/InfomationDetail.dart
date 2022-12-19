import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import './HomePage.dart';

class InfoDetail extends StatefulWidget {
  InfoDetail(
      {super.key,
      required this.score,
      required this.level,
      required this.nickName,
      required this.avatar,
      required this.age});
  final String nickName;
  final String avatar;
  final String age;
  final String level;
  final String score;

  @override
  State<InfoDetail> createState() => _InfoDetailState();
}

class _InfoDetailState extends State<InfoDetail> {
  var score = 0;
  var rank = '';
  var currentUser = FirebaseAuth.instance.currentUser!;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      FirebaseFirestore.instance
          .collection('User')
          .get()
          .then((QuerySnapshot querySnapshot) {
        for (var doc in querySnapshot.docs) {
          if (doc['email'] == currentUser.email) {
            setState(() {
              score = doc['score'];
              rank = doc['rank'];
            });
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgroundGeneral.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text('Thông tin cá nhân',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 10.0),
                child: Image.asset(
                  widget.avatar,
                  fit: BoxFit.cover,
                  width: 80,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black))),
                child: Text(
                  'Nick name: ${widget.nickName}',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black))),
                child: Text(
                  'Your level:  ${widget.level}',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black))),
                child: Text(
                  'Your slogan: ${widget.age}',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  padding: const EdgeInsets.all(6),
                  height: MediaQuery.of(context).size.height * 1 / 5,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45, width: 2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1 / 2 - 40,
                        decoration: const BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(color: Colors.black45, width: 2)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'HighSorce',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                                    child: Text(
                                      '$score',
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    "images/iconHighScore.png",
                                    fit: BoxFit.cover,
                                    width: 20,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 1 / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Rank',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                                    child: Text(
                                      rank,
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    "images/rankVang.png",
                                    fit: BoxFit.cover,
                                    width: 20,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(
                                  score: widget.score.toString(),
                                  nickName: widget.nickName,
                                  level: int.parse(widget.level),
                                  avatar: widget.avatar,
                                  age: widget.age)),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(60, 14, 60, 14),
                        child: Text(
                          "Back",
                          style: TextStyle(
                              color: Color.fromARGB(255, 16, 7, 2),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}

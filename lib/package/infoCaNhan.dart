import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../data/user.dart';
import './HomePage.dart';

class InfoCaNhan extends StatefulWidget {
  InfoCaNhan(
      {super.key,
      required this.email1,
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
  final String email1;

  @override
  State<InfoCaNhan> createState() => _InfoDetailState();
}

class _InfoDetailState extends State<InfoCaNhan> {
  var hang = 0;
  List<Usera> lsUsers = [];
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      FirebaseFirestore.instance
          .collection('User')
          .get()
          .then((QuerySnapshot querySnapshot) {
        for (var doc in querySnapshot.docs) {
          var a = Usera(
              score: doc['score'],
              level: doc['Level'],
              id: doc['id'],
              email: doc['email'],
              name: doc['name'],
              avatar: doc['avatar'],
              age: doc['age']);
          lsUsers.add(a);
        }
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

        for (int i = 0; i < lsUsers.length; i++) {
          if (lsUsers[i].email == widget.email1) {
            setState(() {
              hang = i + 1;
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
                                      widget.score.toString(),
                                      style: TextStyle(
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
                              'Hạng',
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
                                      'Hạng $hang',
                                      style: TextStyle(
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
                        Navigator.pop(context);
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

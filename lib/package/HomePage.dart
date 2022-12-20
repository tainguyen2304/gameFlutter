import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:game/package/HighScoreStart.dart';
import 'package:game/package/MenuPlay.dart';
import 'package:game/package/Setting.dart';
import 'package:game/package/drawerMenu.dart';
import 'InfomationDetail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var level = 0;
  String nanmekk = "";
  String avatar = "";
  String age = "";
  String score = "";
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
              score = doc['score'].toString();
                    age = doc['age'];
                    level = doc['Level'];
                    avatar = doc['avatar'];
                    nanmekk = doc['name'];
            });
          }
        }
      });
    });
  }
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
                      avatar.toString(),
                      height: 60,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: [
                          Text(
                            nanmekk.toString(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'LV ${level.toString()}',
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
                      MaterialPageRoute(
                          builder: (context) => Setting(
                                score: score.toString(),
                                level: level,
                                nickName: nanmekk.toString(),
                                avatar: avatar.toString(),
                                age: age.toString(),
                              )),
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
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("User").snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final data = snapshot.data!.docs;

                for (var row in data) {
                  final r = row.data() as Map<String, dynamic>;
                  if (r['email'] == currentUser.email) {
                    score = r['score'].toString();
                    age = r['age'];
                    level = r['Level'];
                    avatar = r['avatar'];
                    nanmekk = r['name'];
                  }
                }
              }
              return ListView(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/h1.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("images/icon1.png"),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.all(25),
                                  side: BorderSide(
                                      width: 2, color: Colors.black)),
                              onPressed: () {
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InfoDetail(
                                            score: score.toString(),
                                            level: level.toString(),
                                            nickName: nanmekk.toString(),
                                            avatar: avatar.toString(),
                                            age: age.toString(),
                                          )),
                                );
                              },
                              child: Text("Player Information")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.all(25),
                                  side: BorderSide(
                                      width: 2, color: Colors.black)),
                              onPressed: () {
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HighScoreStart(
                                            score: score.toString(),
                                            level: level,
                                            nickName: nanmekk.toString(),
                                            avatar: avatar.toString(),
                                            age: age.toString(),
                                          )),
                                );
                              },
                              child: Text("Bảng xếp hạng")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.all(25),
                                  side: BorderSide(
                                      width: 2, color: Colors.black)),
                              onPressed: () {
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MenuPlay(
                                            score: score.toString(),
                                            level: int.parse(level.toString()),
                                            nickName: nanmekk.toString(),
                                            avatar: avatar.toString(),
                                            age: age.toString(),
                                          )),
                                );
                              },
                              child: Text("Play Game")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.all(25),
                                  side: BorderSide(
                                      width: 2, color: Colors.black)),
                              onPressed: () {},
                              child: Text("Nạp tiền")),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }));
  }
}

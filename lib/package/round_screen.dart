import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:game/package/choose_topic_screen.dart';
import 'package:game/package/playOffline/quizz_screen.dart';

class Round extends StatefulWidget {
  const Round(
      {super.key,
      required this.nickName,
      required this.avatar,
      required this.score,
      required this.level,
      required this.topic,
      required this.age});
  final String nickName;
  final String avatar;
  final String age;
  final String topic;
  final String score;
  final int level;

  @override
  State<Round> createState() => _RoundState();
}

class _RoundState extends State<Round> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChooseTopic(
                            score: widget.score.toString(),
                            level: int.parse(widget.level.toString()),
                            nickName: widget.nickName,
                            avatar: widget.avatar,
                            age: widget.age,
                          )));
            },
            icon: const Icon(Icons.arrow_back),
            iconSize: 30,
          ),
          title: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              widget.topic,
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
                ),
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('levelPlayOffline')
                      .where('topic', isEqualTo: widget.topic)
                      .orderBy('created_at', descending: false)
                      .snapshots(),
                  builder:
                      (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    if (streamSnapshot.hasData) {
                      return Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                "images/start.png",
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                bottom: -50,
                                right: 0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                            "images/Mask Group 17.png"),
                                        iconSize: 210,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Wrap(
                              children: streamSnapshot.data!.docs
                                  .map((levelItem) => Container(
                                      margin: const EdgeInsets.all(4),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: const StadiumBorder(),
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 80, 69, 14),
                                            // padding: const EdgeInsets.fromLTRB(
                                            //     50, 20, 50, 20),
                                            side: const BorderSide(
                                                width: 3, color: Colors.black)),
                                        onPressed: () {
                                          Navigator.of(context).popUntil(
                                              (route) => route.isFirst);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PlayOffline(
                                                          score: widget.score
                                                              .toString(),
                                                          levelUser: int.parse(
                                                              widget.level
                                                                  .toString()),
                                                          topic: widget.topic,
                                                          level:
                                                              levelItem['name'],
                                                          nickName:
                                                              widget.nickName,
                                                          avatar: widget.avatar,
                                                          age: widget.age)));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            // color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(60.0),
                                            border: Border.all(
                                                style: BorderStyle.none),
                                          ),
                                          child: Text(
                                            'LV ${levelItem['name']}',
                                            style: const TextStyle(
                                                fontSize: 30,
                                                color: Colors.white),
                                          ),
                                        ),
                                      )))
                                  .toList())
                        ],
                      );
                    } else if (streamSnapshot.hasError) {
                      print("lỗi");
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                )),
          ],
        ));
  }
}

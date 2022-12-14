import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:game/package/choose_topic_screen.dart';
import 'package:game/package/playOffline/quizz_screen.dart';

class Round extends StatefulWidget {
  const Round({super.key, this.topic});
  final String? topic;

  @override
  State<Round> createState() => _RoundState();
}

class _RoundState extends State<Round> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 130, 129, 129),
          elevation: 0,
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
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          //   children: [
                          //     ElevatedButton(
                          //       onPressed: () {
                          //         Navigator.pop(context);
                          //         Navigator.push(
                          //             context,
                          //             MaterialPageRoute(
                          //                 builder: (context) =>
                          //                     const ChooseTopic()));
                          //       },
                          //       child: Container(
                          //         decoration: BoxDecoration(
                          //           // color: Colors.white,
                          //           borderRadius: BorderRadius.circular(60.0),
                          //           border: Border.all(style: BorderStyle.none),
                          //         ),
                          //         child: const Text(
                          //           '<',
                          //           style: TextStyle(
                          //               fontSize: 30,
                          //               color: Colors.black,
                          //               fontWeight: FontWeight.bold),
                          //         ),
                          //       ),
                          //     )
                          //   ],
                          // ),
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
                                                          topic: widget.topic,
                                                          level: levelItem[
                                                              'name'])));
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
                                            levelItem['name'],
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

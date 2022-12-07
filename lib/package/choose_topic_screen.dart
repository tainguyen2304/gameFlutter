import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:game/package/choose_level_play_offline.dart';

class ChooseTopic extends StatefulWidget {
  const ChooseTopic({Key? key}) : super(key: key);
  @override
  _ChooseTopicState createState() => _ChooseTopicState();
}

class _ChooseTopicState extends State<ChooseTopic> {
  final CollectionReference _topics =
      FirebaseFirestore.instance.collection('topic');
  var selectedIndex = "";
  var topic = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgroundGeneral.png"),
                  fit: BoxFit.cover),
            ),
            child: StreamBuilder(
              stream: _topics.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasData) {
                  return Wrap(
                      children: streamSnapshot.data!.docs
                          .map((topicItem) => Container(
                              margin: const EdgeInsets.all(4),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                    const Color.fromARGB(255, 112, 235, 114)
                                        .withOpacity(0.8),
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                ),
                                onPressed: () {
                                  // Navigator.of(context).popUntil((route) => route.isFirst);
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => Round1()(
                                  //           nickName: nickName.text, avatar: avatar, age: txtage.text)),
                                  // );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    topicItem['name'],
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ),
                              )))
                          .toList());
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ))
      ],
    ));
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game/package/choose_level_play_offline.dart';
import '../models/avatar_models.dart';
import './HomePage.dart';

List<Avatar> avatarImages = [
  Avatar(image: "images/avatar1.png", id: "1"),
  Avatar(image: "images/avatar2.png", id: "2"),
  Avatar(image: "images/avatar3.png", id: "3"),
  Avatar(image: "images/avatar4.png", id: "4"),
  Avatar(image: "images/avatar5.png", id: "5"),
  Avatar(image: "images/avatar6.png", id: "6"),
];

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

  void _done() {
    if (topic != "") {
      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Round1()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgroundGeneral.png"),
                  fit: BoxFit.cover),
            ),
            child: StreamBuilder(
              stream: _topics.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasData) {
                  return ListView.builder(
                    itemCount: streamSnapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      final DocumentSnapshot topicItem =
                          streamSnapshot.data!.docs[index];
                      return ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 112, 235, 114)
                                .withOpacity(0.8),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                        onPressed: () => {},
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            topicItem['name'],
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      );
                    },
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            )));
  }
}

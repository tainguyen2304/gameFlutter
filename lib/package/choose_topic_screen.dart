import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:game/drawer/my_header_drawer.dart';
import 'package:game/package/MenuPlay.dart';
import 'package:game/package/Setting.dart';
import 'package:game/package/round_screen.dart';

class ChooseTopic extends StatefulWidget {
  const ChooseTopic(
      {super.key,
      required this.nickName,
      required this.avatar,
      required this.score,
      required this.level,
      required this.age});
  final String nickName;
  final String score;
  final String avatar;
  final String age;
  final int level;

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
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MenuPlay(
                          score: widget.score.toString(),
                          level: int.parse(widget.level.toString()),
                          nickName: widget.nickName,
                          avatar: widget.avatar,
                          age: widget.age)));
            },
            icon: const Icon(Icons.arrow_back),
            iconSize: 30,
          ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      widget.avatar,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.nickName,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'LV: ${widget.level}',
                            style: const TextStyle(fontSize: 15),
                          ),
                          Text(
                            ' ${widget.age}',
                            style: const TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ]),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Setting()),
                  );
                },
                icon: Image.asset("images/settings.png"),
                iconSize: 30,
              ),
            ],
          ),
        ),
        // drawer: Drawer(
        //   child: SingleChildScrollView(
        //     dragStartBehavior: DragStartBehavior.down,
        //     child: Column(
        //       children: [
        //         const MyHeaderDrawer(),
        //         MyDrawerList(),
        //       ],
        //     ),
        //   ),
        // ),
        body: ListView(
          children: [
            Container(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
                ),
                child: StreamBuilder(
                  stream: _topics.snapshots(),
                  builder:
                      (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    if (streamSnapshot.hasData) {
                      return Column(
                        children: [
                          const Center(
                            child: Text('Choose your topic',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                          ),
                          Wrap(
                              children: streamSnapshot.data!.docs
                                  .map((topicItem) => Container(
                                      margin: const EdgeInsets.all(4),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll<Color>(
                                            const Color.fromARGB(
                                                    255, 112, 235, 114)
                                                .withOpacity(0.8),
                                          ),
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).popUntil(
                                              (route) => route.isFirst);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Round(
                                                      score: widget.score
                                                          .toString(),
                                                      level: int.parse(widget
                                                          .level
                                                          .toString()),
                                                      topic: topicItem['name'],
                                                      nickName: widget.nickName,
                                                      avatar: widget.avatar,
                                                      age: widget.age)));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(
                                            topicItem['name'],
                                            style: const TextStyle(
                                                color: Colors.black),
                                          ),
                                        ),
                                      )))
                                  .toList())
                        ],
                      );
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

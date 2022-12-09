import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

import 'Setting.dart';

class PlayOffline extends StatefulWidget {
  const PlayOffline({super.key, this.topic, this.level});
  final String? level;
  final String? topic;

  @override
  State<PlayOffline> createState() => _PlayOfflineState();
}

class _PlayOfflineState extends State<PlayOffline> {
  Color _color = const Color.fromARGB(255, 101, 103, 101).withOpacity(0.8);

  void _change() {
    setState(() {
      _color = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
            ),
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('question')
                  .where('topic', isEqualTo: widget.topic)
                  .where('level', isEqualTo: widget.level)
                  // .orderBy('created_at', descending: false)
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasData) {
                  return Column(
                    children: [
                      const Text(
                        'WHO IS STUPID ?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'MyFont'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              var showDialog2 = showDialog(
                                context: context,
                                builder: (context) => QuyenTroGiup(),
                              );
                            },
                            icon: Image.asset("images/help.png"),
                            iconSize: 80,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                            child: Text(
                              '${widget.topic}:  ${widget.level}',
                              style: const TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      LinearPercentIndicator(
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 5000,
                        percent: 1,
                        center: const Text("10s"),
                        progressColor: Colors.black38,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromARGB(255, 65, 64, 64).withOpacity(0.8),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                          ),
                          onPressed: () => {},
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              '1 + 1 =',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'CHOOSE YOUR ANSWER:',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                          children: streamSnapshot.data!.docs
                              .map((questionItem) => Container(
                                  margin: const EdgeInsets.all(4),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: const StadiumBorder(),
                                        backgroundColor:
                                            Color.fromARGB(255, 168, 167, 166),
                                        side: const BorderSide(
                                            width: 3, color: Colors.black)),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .popUntil((route) => route.isFirst);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => PlayOffline(
                                                  topic: widget.topic,
                                                  level:
                                                      questionItem['name'])));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        // color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(60.0),
                                        border:
                                            Border.all(style: BorderStyle.none),
                                      ),
                                      child: Text(
                                        questionItem['content'],
                                        style: const TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                  )))
                              .toList()
                          //   [
                          //   SizedBox(
                          //     width: MediaQuery.of(context).size.width,
                          //     child: ElevatedButton(
                          //       style: ButtonStyle(
                          //         backgroundColor:
                          //             MaterialStatePropertyAll<Color>(
                          //           Color.fromARGB(255, 101, 103, 101)
                          //               .withOpacity(0.8),
                          //         ),
                          //         shape: MaterialStateProperty.all(
                          //           RoundedRectangleBorder(
                          //               borderRadius:
                          //                   BorderRadius.circular(10.0)),
                          //         ),
                          //       ),
                          //       onPressed: () {
                          //         var showDialog2 = showDialog(
                          //           context: context,
                          //           builder: (context) => QuyenTroGiup1(),
                          //         );
                          //       },
                          //       child: const Padding(
                          //         padding: EdgeInsets.all(10.0),
                          //         child: Text(
                          //           '1',
                          //           style: TextStyle(color: Colors.white),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          //   const SizedBox(
                          //     height: 10.0,
                          //   ),
                          // ],
                          )
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            )),
      ],
    ));
  }

  AlertDialog QuyenTroGiup() {
    return AlertDialog(
      backgroundColor: Colors.white70.withOpacity(0.75),
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/icon7.png"),
                  iconSize: 100,
                ),
                // Divider(
                //   color: Colors.black,
                // ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/passed.png"),
                  iconSize: 100,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/refresh.png"),
                  iconSize: 100,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

AlertDialog QuyenTroGiup1() {
  return AlertDialog(
    title: Text("Are You Sure"),
    backgroundColor: Color.fromARGB(255, 126, 147, 184).withOpacity(0.75),
    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
    actions: [
      TextButton(
        onPressed: () {},
        child: Text('Yes'),
      ),
      TextButton(
        onPressed: () {},
        child: Text('No'),
      ),
    ],
  );
}

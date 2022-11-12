import 'package:flutter/material.dart';
import 'package:game/data/dataoff.dart';

class GetGiaoDien_RankOff extends StatefulWidget {
  const GetGiaoDien_RankOff({super.key, required this.a});
  final Stations a;

  @override
  State<GetGiaoDien_RankOff> createState() => _GetGiaoDien_RankOffState();
}

class _GetGiaoDien_RankOffState extends State<GetGiaoDien_RankOff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h3.jpg"), fit: BoxFit.cover),
        ),
        // child: Stack(children: [
        //   Container(ssss
        //     child: const Text("High score"),
        //   ),
        //   Container(
        //     child: Column(
        //       children: [
        //         Row(
        //           children: [
        //             CircleAvatar(
        //               backgroundImage: NetworkImage(widget.a.Image),
        //             ),
        //             CircleAvatar(
        //               backgroundImage: NetworkImage(widget.a.Icon),
        //             )
        //           ],ssss
        //         )ssssssssssss
        //       ],
        //     ),
        //   ),
        // ]),
      ),
    );
  }
}

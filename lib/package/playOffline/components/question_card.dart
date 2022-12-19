import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:game/controllers/question_controller.dart';
import 'package:game/models/question.dart';
import 'package:game/package/Lose.dart';
import 'package:game/package/WinPage.dart';
import 'package:get/get.dart';
import '../../../constants.dart';
import 'option.dart';

class QuestionCard extends StatefulWidget {
  const QuestionCard(
      {super.key,
      required this.question,
      required this.nickName,
      required this.avatar,
      required this.score,
      required this.levelUser,
      required this.topic,
      required this.level,
      required this.age});

  final Question question;
  final String nickName;
  final String avatar;
  final String age;
  final String level;
  final String topic;
  final String score;
  final int levelUser;
  @override
  State<QuestionCard> createState() => _QuestionCard();
}

class _QuestionCard extends State<QuestionCard> {
  QuestionController _controller = Get.put(QuestionController());
  var historyQuery =
      FirebaseFirestore.instance.collection('offlineHistoryUser');
  var userQuery = FirebaseFirestore.instance.collection('User');

  void _press(question, index) {
    _controller.checkAns(question, index);
    if (_controller.numOfLife.value == 0) {
      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoseScreen(
                score: widget.score.toString(),
                levelUser: widget.levelUser,
                topic: widget.topic,
                level: widget.level,
                nickName: widget.nickName,
                avatar: widget.avatar,
                age: widget.age)),
      );
    } else if (_controller.questionNumber.value == 10 &&
        _controller.numOfLife.value > 0) {
      // lấy ra user hiện tại
      var currentUser = FirebaseAuth.instance.currentUser!;

      // khi thắng, cộng 3 điểm vào score của user
      userQuery.get().then((QuerySnapshot querySnapshot) {
        for (var doc in querySnapshot.docs) {
          if (doc['email'] == currentUser.email) {
            int score = doc['score'] + 3;
            userQuery.doc(doc['id']).update({'score': score});
          }
        }
      });

      // khi thắng, ghi lại lịch sử
      historyQuery.get().then((QuerySnapshot querySnapshot) {
        for (var docHistory in querySnapshot.docs) {
          if (docHistory['userEmail'] == currentUser.email &&
              docHistory['topic'] == widget.topic) {
            var level = int.parse(widget.level) + 1;
            historyQuery.doc(docHistory['id']).update({
              'level': level.toString(),
            });
          }
        }
      });

      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => WinPage(
                score: widget.score.toString(),
                levelUser: widget.levelUser,
                topic: widget.topic,
                level: widget.level,
                nickName: widget.nickName,
                avatar: widget.avatar,
                age: widget.age)),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (_controller.numOfLife.value == 0) {
        Navigator.of(context).popUntil((route) => route.isFirst);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LoseScreen(
                  score: widget.score.toString(),
                  levelUser: widget.levelUser,
                  topic: widget.topic,
                  level: widget.level,
                  nickName: widget.nickName,
                  avatar: widget.avatar,
                  age: widget.age)),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(widget.question.content,
              style: Theme.of(context).textTheme.headline6
              // .copyWith(color: kBlackColor),
              ),
          const SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            widget.question.plans.length,
            (index) => Option(
              index: index,
              text: widget.question.plans[index],
              press: () => _press(widget.question, index),
            ),
          ),
        ],
      ),
    );
  }
}

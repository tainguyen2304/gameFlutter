import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game/constants.dart';
import 'package:game/controllers/question_controller.dart';
import 'package:game/models/question.dart';
import 'package:game/package/playOffline/components/progress_bar.dart';
import 'package:game/package/playOffline/components/question_card.dart';
import 'package:game/package/round_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PlayOffline extends StatefulWidget {
  const PlayOffline(
      {super.key,
      required this.nickName,
      required this.avatar,
      required this.score,
      required this.levelUser,
      required this.topic,
      required this.level,
      required this.age});
  final String nickName;
  final String avatar;
  final String age;
  final String level;
  final String topic;
  final String score;
  final int levelUser;

  @override
  State<PlayOffline> createState() => _PlayOfflineState();
}

class _PlayOfflineState extends State<PlayOffline> {
  QuestionController questionController = Get.put(QuestionController());

  void _change() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      questionController.onInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                questionController.pause();
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text(
                      "Are You Sure ?",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    content: const Text(
                      'If you exit , your results will not be recorded.',
                      style: TextStyle(fontSize: 20),
                    ),
                    backgroundColor: Colors.white,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Round(
                                      score: widget.score.toString(),
                                      level: int.parse(
                                          widget.levelUser.toString()),
                                      topic: widget.topic,
                                      nickName: widget.nickName,
                                      avatar: widget.avatar,
                                      age: widget.age)));
                        },
                        child: const Text(
                          'Exit',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, 'Cancel');
                          questionController.playContinue();
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back),
              iconSize: 30,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: questionController.nextQuestion,
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
            ]),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/h2.jpg"), fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              SvgPicture.asset("images/h1.jpg", fit: BoxFit.fill),
              SafeArea(
                  child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('question')
                    .where('level', isEqualTo: widget.level)
                    .where('topic', isEqualTo: widget.topic)
                    .snapshots(),
                builder:
                    (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                  if (streamSnapshot.hasData) {
                    final data = streamSnapshot.data!.docs;
                    List<Question> questions = data
                        .map(
                          (question) => Question(
                              answer: question['answer'] ?? '',
                              content: question['content'] ?? '',
                              difficultId: question['difficultId'] ?? '',
                              level: question['level'] ?? '',
                              topic: question['topic'] ?? '',
                              plans: question['plans'] ?? ''),
                        )
                        .toList();
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'WHO IS STUPID ?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'MyFont'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 5, 5),
                              child: Text(
                                '${widget.topic}:  LV${widget.level}',
                                style: const TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12),
                          child: ProgressBar(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding),
                          child: Obx(
                            () => Text.rich(
                              TextSpan(
                                text:
                                    "Life: ${questionController.numOfLife.value}",
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                                children: [
                                  const TextSpan(
                                    text: "/3",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                    // .copyWith(color: kSecondaryColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding),
                          child: Obx(
                            () => Text.rich(
                              TextSpan(
                                text:
                                    "Question ${questionController.questionNumber.value}",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                                // .copyWith(color: kSecondaryColor),
                                children: [
                                  TextSpan(
                                    text: "/${questions.length}",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                    // .copyWith(color: kSecondaryColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 1.5,
                        ),
                        Expanded(
                          child: PageView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              controller: questionController.pageController,
                              onPageChanged: questionController.updateTheQnNum,
                              itemCount: questions.length,
                              itemBuilder: (context, index) =>
                                  SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: QuestionCard(
                                        score: widget.score.toString(),
                                        level: widget.level,
                                        topic: widget.topic,
                                        levelUser: widget.levelUser,
                                        nickName: widget.nickName.toString(),
                                        avatar: widget.avatar.toString(),
                                        age: widget.age.toString(),
                                        question: questions[index]),
                                  )),
                        ),
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              )),
            ],
          ),
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

AlertDialog Exit() {
  return AlertDialog();
}

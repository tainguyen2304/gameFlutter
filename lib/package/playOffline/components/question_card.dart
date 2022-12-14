import 'package:flutter/material.dart';
import 'package:game/controllers/question_controller.dart';
import 'package:game/models/question.dart';
import 'package:get/get.dart';
import '../../../constants.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key, required this.question});

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(question.content, style: Theme.of(context).textTheme.headline6
              // .copyWith(color: kBlackColor),
              ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.plans.length,
            (index) => Option(
              index: index,
              text: question.plans[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class Question {
  final String answer;
  final String content;
  final String difficultId;
  final String level;
  final String topic;
  final List plans;

  Question({
    required this.answer,
    required this.content,
    required this.difficultId,
    required this.level,
    required this.plans,
    required this.topic,
  });
}

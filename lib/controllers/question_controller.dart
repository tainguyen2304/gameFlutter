import 'package:flutter/widgets.dart';
import 'package:game/models/question.dart';
import 'package:game/package/giao_dien_chienthang.dart';
import 'package:get/get.dart';

// We use get package for our state management

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  // so that we can access our animation outside
  Animation get animation => _animation;

  late PageController _pageController;
  PageController get pageController => _pageController;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  late String _correctAns;
  String get correctAns => _correctAns;

  late int _selectedAns;
  int get selectedAns => _selectedAns;

  // for more about obs please check documentation
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  RxInt _numOfLife = 1.obs;
  RxInt get numOfLife => _numOfLife;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => _numOfCorrectAns;

  int _fate = 0;
  int get fate => _fate;

  void onInit() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 30), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // update like setState
        update();
      });
    _questionNumber.value = 0;
    _numOfLife.value = 3;
    _numOfCorrectAns = 0;
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
  }

  void onClose() {
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (num.parse(_correctAns) == _selectedAns) {
      _numOfCorrectAns++;
    } else {
      _numOfLife.value = _numOfLife.value - 1;
    }

    // It will stop the counter
    _animationController.stop();

    // Once user select an ans after 3s it will go to the next qn
    Future.delayed(const Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void pause() {
    _animationController.stop();
  }

  void playContinue() {
    _animationController.forward();
  }

  void nextQuestion() {
    if (_questionNumber.value != 10) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      // Then start it again
      // Once timer is finish go to the next qn
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(const WinScreen());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}

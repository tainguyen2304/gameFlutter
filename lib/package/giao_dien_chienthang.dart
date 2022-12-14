import 'package:flutter/material.dart';
import 'package:game/controllers/question_controller.dart';
import 'package:get/get.dart';

class WinScreen extends StatefulWidget {
  const WinScreen({super.key});

  @override
  State<WinScreen> createState() => _WinScreenState();
}

class _WinScreenState extends State<WinScreen> {
  QuestionController questionController = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h6.jpg"), fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("RESULTS",
                    style: TextStyle(
                      fontSize: 20,
                    )),
                Text(
                  "You Won",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  "life: ${questionController.numOfLife.value}",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  "score:${questionController.numOfCorrectAns} ",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/king.png"),
                          iconSize: 100,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "images/Mask Group 17.png",
                          ),
                          iconSize: 150,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/icon2.png"),
                      iconSize: 80,
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.width / 2.0 / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 65, 49, 3)),
                    child: Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 83, 88, 93),
                              padding:
                                  const EdgeInsets.fromLTRB(50, 30, 50, 30),
                              side: BorderSide(width: 2, color: Colors.black)),
                          onPressed: () {},
                          child: Text("Play Again")),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(25),
                            side: BorderSide(width: 2, color: Colors.black)),
                        onPressed: () {},
                        child: Text("Home")),
                    SizedBox(
                      width: 100,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(25),
                            side: BorderSide(width: 2, color: Colors.black)),
                        onPressed: () {},
                        child: Text("Back")),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game/main.dart';
import 'Signup.dart';
import 'ChooseAvatar.dart';

class resetpassScreen extends StatefulWidget {
  resetpassScreen({super.key});

  @override
  State<resetpassScreen> createState() => _resetpassScreen();
}

class _resetpassScreen extends State<resetpassScreen> {
  TextEditingController email = TextEditingController();

  Future quenMK() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("Đã reset password check your email"),
            );
          });
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
              child: Image.asset(
                "images/icon1.png",
                fit: BoxFit.cover,
                width: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Reset Pass',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.black54),
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black54),
                              ),
                              border: OutlineInputBorder(),
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.black54)),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                quenMK();
                              },
                              child: Text("Reset pass")),
                          Padding(padding: EdgeInsets.only(left: 15)),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Back"))
                        ],
                      ),
                    ],
                  )),
            )
          ]),
        )
      ]),
    );
  }
}
